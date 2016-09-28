----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:29 04/30/2009 
-- Design Name: 
-- Module Name:    M4to1_4 - Behavioral 
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

-- DO NOT MODIFY THE ENTITY DECLARATION
entity M4to1_4 is
    Port ( I0 : in  STD_LOGIC_VECTOR (3 downto 0);
           I1 : in  STD_LOGIC_VECTOR (3 downto 0);
           I2 : in  STD_LOGIC_VECTOR (3 downto 0);
           I3 : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end M4to1_4;

architecture Behavioral of M4to1_4 is

begin
	process(sel)
	begin
		case sel is
			when "00" => Y <= I0;
			when "01" => Y <= I1;
			when "10" => Y <= I2;
			when others => Y <= I3;
		end case;
	end process;

end Behavioral;

