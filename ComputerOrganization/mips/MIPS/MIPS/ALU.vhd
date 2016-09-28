----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:06 04/28/2009 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( SrcA : in  STD_LOGIC_VECTOR (7 downto 0);
           SrcB : in  STD_LOGIC_VECTOR (7 downto 0);
           ALUControl : in  STD_LOGIC_VECTOR (2 downto 0);
           Zero : out  STD_LOGIC;
           ALURes : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is
signal aux: STD_LOGIC_VECTOR (7 downto 0);
begin
	process(SrcA,SrcB,ALUControl)
	begin
	  case ALUControl is
	    when "010" =>	aux <= SrcA + SrcB;
	    when "110" =>  aux <= SrcA + (not SrcB) + 1;
	    when "000" =>  aux <= SrcA and SrcB;
	    when "001" =>	aux <= SrcA or SrcB;
	    when others => aux <= "XXXXXXXX";
	  end case;
	end process;

	process (aux)
	begin
	  if aux = x"00" then Zero <= '1';
	  else Zero <= '0';
	  end if;
	end process;
  
   ALURes <= aux;

end Behavioral;

