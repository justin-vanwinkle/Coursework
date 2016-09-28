----------------------------------------------------------------------------------
-- Module Name:    Contr_7seg - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity Contr_7seg is
    Port ( 	disp1 : in  STD_LOGIC_vector(6 downto 0);
		disp2 : in  STD_LOGIC_vector(6 downto 0);
		disp3 : in  STD_LOGIC_vector(6 downto 0);
		disp4 : in  STD_LOGIC_vector(6 downto 0);
           	clk : in  STD_LOGIC;
		reset: in std_logic;
		seg: out std_logic_vector(6 downto 0);
           	dp : out  STD_LOGIC;
		an:  out std_logic_vector(3 downto 0));
end Contr_7seg;

architecture Behavioral of Contr_7seg is
   signal cntDiv: std_logic_vector(25 downto 0); -- general clock div/cnt
   signal clk_i: std_logic;
   type state_type is (st0, st1, st2, st3); 
   signal state, next_state : state_type; 
   --Declare internal signals for all outputs of the state-machine
   signal seg_i : std_logic_vector(6 downto 0);
   signal an_i : std_logic_vector(3 downto 0);
   signal ck0Div2: STD_LOGIC;
   signal ckOut: std_logic;

begin
   BUFGMUX_inst : BUFGMUX
   port map (
      O => ckOut,    -- Clock MUX output
      I0 => ck0Div2,  -- Clock0 input
      I1 => clk,  -- Clock1 input
      S => '1'     -- Clock select input
   );

  div2: process(ckOut)
  begin
    if ckOut'event and ckOut = '1' then
	   ck0Div2 <= not ck0Div2; 
    end if;
  end process;	 
  
  ckDivider: process(ckOut, reset)
  begin
	 if reset = '1' then cntDiv <= "00000000000000000000000000";
	 elsif ckOut'event and ckOut='1' then
		cntDiv <= cntDiv + 1;
	 end if;
  end process;

  clk_i <= cntDiv(16);  -- For the board
--  clk_i <= cntDiv(0);  -- For simulation
  
  SYNC_PROC: process (clk_i)
   begin
      if (clk_i'event and clk_i = '1') then
         if (reset = '1') then
            state <= st0;
            seg <= "0011010";
				an <= "1110";
         else
            state <= next_state;
            seg <= seg_i;
				an <= an_i;
         end if;        
      end if;
   end process;
 
   --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state,disp1, disp2,disp3,disp4)
   begin

		case state is 
			when st0 =>
				seg_i <= disp1;
				an_i <= "1110";
				next_state <= st1;
			when st1 =>
				seg_i <= disp2;
				an_i <= "1101";
				next_state <= st2;
			when st2 =>
				seg_i <= disp3;
				an_i <= "1011";
				next_state <= st3;
			when st3 =>
				seg_i <= disp4;
				an_i <= "0111";
				next_state <= st0;
 			when others =>
				seg_i <= disp1;
				an_i <= "1110";
				next_state <= st0;
		end case;

   end process;

   dp <= '1';

end Behavioral;

