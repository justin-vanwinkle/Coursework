----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:11 04/28/2009 
-- Design Name: 
-- Module Name:    Dmem - Behavioral 
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

entity Dmem is
    Port ( clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           WD : in  STD_LOGIC_VECTOR (7 downto 0);
           RD : out  STD_LOGIC_VECTOR (7 downto 0));
end Dmem;

architecture Behavioral of Dmem is
type ram_type is array (0 to 255) of std_logic_vector(7 downto 0);
signal tmp_ram: ram_type;

begin

  RD <= tmp_ram(conv_integer(A)); 
	
  process(clk, WE)
  begin
	if clk'event and clk='1' then
		 if WE='1' then
		    tmp_ram(conv_integer(A)) <= WD;
		 end if;
	end if;
  end process;

end Behavioral;

