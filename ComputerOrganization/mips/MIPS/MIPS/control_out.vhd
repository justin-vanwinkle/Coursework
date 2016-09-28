----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:41 04/30/2009 
-- Design Name: 
-- Module Name:    control_out - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_out is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  sel : out std_logic_vector(1 downto 0);
			  aux0, aux1, aux2, aux3 : out std_logic_vector(4 downto 0));
end control_out;

architecture Behavioral of control_out is
type state_m is (s0, s1, s2, s3);
signal p_s, n_s : state_m;
signal D0, D1, D2, D3 : std_logic;
signal sel_i : std_logic_vector(1 downto 0);

begin
  process(clk, reset)
  begin
    if reset = '1' then
	   p_s <= s0;
	 elsif clk'event and clk = '1' then
	   p_s <= n_s;
	 end if;
  end process;
  
  process(p_s)
  begin
    case p_s is
	   when s0 =>
		  D0 <= '0';
		  D1 <= '0';
		  D2 <= '1';
		  D3 <= '1';
		  sel_i <= "00";
		  n_s <= s1;
	
		when s1 =>
		  D0 <= '0';
		  D1 <= '0';
		  D2 <= '0';
		  D3 <= '0';
		  sel_i <= "01";
		  n_s <= s2;
		  
		when s2 =>
		  D0 <= '0';
		  D1 <= '0';
		  D2 <= '0';
		  D3 <= '0';
		  sel_i <= "10";
		  n_s <= s3;
		  
		when s3 =>
		  D0 <= '1';
		  D1 <= '0';
		  D2 <= '0';
		  D3 <= '1';
		  sel_i <= "11";
		  n_s <= s0;
		  
		when others => n_s <= s0;
	 end case;
  end process;

  aux0 <= D0 & "1111";
  aux1 <= D1 & "1111";
  aux2 <= D2 & "0001";
  aux3 <= D3 & "0000";
  sel <= sel_i;

end Behavioral;

