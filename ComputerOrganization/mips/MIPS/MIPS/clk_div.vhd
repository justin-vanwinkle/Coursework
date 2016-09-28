----------------------------------------------------------------------------------
-- Module Name:    Clock divider 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity clk_div is
    Port ( 	clk_in : in  STD_LOGIC;
				reset: in std_logic;
				manual : in std_logic;
				manual2 : in std_logic;
				clk_50MHz : out STD_LOGIC;
				pulse : out std_logic;
				pulse2 : out std_logic;
				clk_2sec : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
   signal cntDiv, cnt2: std_logic_vector(12 downto 0); -- clock for pulse
	signal cnt2sec: std_logic_vector(26 downto 0); -- 0.6 sec clock
   signal ck0Div2: STD_LOGIC;
   signal ckOut, clk_aux, clk_aux2, aux, aux2: std_logic;
   type state_m is (s0, s1);
	signal present_state, next_state, ps_2, ns_2 : state_m;
	
begin

   BUFGMUX_inst : BUFGMUX
   port map (
      O => ckOut,    -- Clock MUX output
      I0 => ck0Div2,  -- Clock0 input
      I1 => clk_in,  -- Clock1 input
      S => '1'     -- Clock select input
   );

  div2: process(ckOut, reset)
  begin
    if reset ='1' then
	   ck0Div2 <= '0';
    elsif ckOut'event and ckOut = '1' then
	   ck0Div2 <= not ck0Div2; 
    end if;
  end process;	 

  clk_50MHz <= ck0Div2;
  
  process(ckOut, reset, aux, aux2)
  begin
    if reset = '1' then 
	   present_state <= s0;
		ps_2 <= s0;
		cnt2sec <= "000000000000000000000000000";
		pulse <= '0';
		pulse2 <= '0';
	 elsif ckOut'event and ckOut = '1' then
		cnt2sec <= cnt2sec + 1;
	   
		present_state <= next_state;
		pulse <= clk_aux;
		if aux = '0' then
		  cntDiv <= "0000000000000";
		else 
		  cntDiv <= cntDiv + 1;
	   end if;
		
		ps_2 <= ns_2;
		pulse2 <= clk_aux2;
		if aux2 = '0' then
		  cnt2 <= "0000000000000";
		else 
		  cnt2 <= cnt2 + 1;
	   end if;
		
	 end if;
  end process;
  
  clk_2sec <= cnt2sec(26);
 
  process(present_state, manual, cntDiv)
  begin
    case present_state is
	 when s0 =>
	   aux <= '0';
	   if manual = '1' then
		  next_state <= s1;
		  clk_aux <= '1';
		else
		  next_state <= s0;
	     clk_aux <= '0';
		end if;
	 when s1 =>
	   if manual = '1' then 
			next_state <= s1;
			clk_aux <= '1';
			aux <= '0';
	   elsif cntDiv(12) = '1' then 
		  next_state <= s0;
		  clk_aux <= '0';
		  aux <= '0';
		else
		  next_state <= s1;
		  clk_aux <= '1';
		  aux <= '1';
		end if;
	 when others => next_state <= s0;
	 end case;
  end process;

  process(ps_2, manual2, cnt2)
  begin
    case ps_2 is
	 when s0 =>
	   aux2 <= '0';
	   if manual2 = '1' then
		  ns_2 <= s1;
		  clk_aux2 <= '1';
		else
		  ns_2 <= s0;
	     clk_aux2 <= '0';
		end if;
	 when s1 =>
	   if manual2 = '1' then 
			ns_2 <= s1;
			clk_aux2 <= '1';
			aux2 <= '0';
	   elsif cnt2(12) = '1' then 
		  ns_2 <= s0;
		  clk_aux2 <= '0';
		  aux2 <= '0';
		else
		  ns_2 <= s1;
		  clk_aux2 <= '1';
		  aux2 <= '1';
		end if;
	 when others => ns_2 <= s0;
	 end case;
  end process;
  
end Behavioral;

