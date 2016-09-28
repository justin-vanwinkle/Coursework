----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:35 02/22/2009 
-- Design Name: 
-- Module Name:    Hexal_7-Seg_DEC - Behavioral 
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

entity HEX_7Seg_DEC is
    Port ( bcd : in  STD_LOGIC_VECTOR(4 downto 0);
           seg: out std_logic_vector(6 downto 0));
end HEX_7Seg_DEC;

architecture Behavioral of HEX_7Seg_DEC is
signal aux : std_logic_vector (2 downto 0);
begin
	process(bcd)
	begin
		case bcd is
			when "00000" => seg <= "0000001";
			when "00001" => seg <= "1001111";
			when "00010" => seg <= "0010010";
			when "00011" => seg <= "0000110";
			when "00100" => seg <= "1001100";
			when "00101" => seg <= "0100100";
			when "00110" => seg <= "0100000";
			when "00111" => seg <= "0001111";
			when "01000" => seg <= "0000000";
			when "01001" => seg <= "0001100";
			when "01010" => seg <= "0001000";
			when "01011" => seg <= "1100000";
			when "01100" => seg <= "0110001";
			when "01101" => seg <= "1000010";
			when "01110" => seg <= "0110000";
			when "01111" => seg <= "0111000";
			when "10000" => seg <= "0011000";
			when "10001" => seg <= "1110010";
			when others  => seg <= "1111110";
		end case;
	end process;
end Behavioral;

