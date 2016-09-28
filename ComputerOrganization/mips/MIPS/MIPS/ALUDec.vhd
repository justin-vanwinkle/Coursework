----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:58 04/28/2009 
-- Design Name: 
-- Module Name:    ALUDec - Behavioral 
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

entity ALUDec is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Funct : in  STD_LOGIC_VECTOR (2 downto 0);
           ALUControl : out  STD_LOGIC_VECTOR (2 downto 0));
end ALUDec;

architecture Behavioral of ALUDec is
signal aux : STD_LOGIC_VECTOR (2 downto 0);
begin
  process(ALUOp, Funct)
  begin
   case (ALUOp) is 
      when "00" => aux <= "010";
		when "01" => aux <= "110";
      when "10" =>
		   case (Funct) is
			  when "000" => aux <= "010";
			  when "010" => aux <= "110";
			  when "100" => aux <= "000";
           when "101" => aux <= "001";
			  when others => aux <= "011";
			end case;
		when others => aux <= "011";
   end case;
  end process;
  
  ALUControl <= aux;
  
end Behavioral;

