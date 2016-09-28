----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:54 04/28/2009 
-- Design Name: 
-- Module Name:    MainDEC - Behavioral 
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

entity MainDEC is
    Port ( OpCode : in  STD_LOGIC_VECTOR (3 downto 0);
           RegWr : out  STD_LOGIC;
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemWr : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           Jump : out  STD_LOGIC);
end MainDEC;

architecture Behavioral of MainDEC is
begin
  process(OpCode)
  begin
   case (OpCode) is 
      when "0000" =>
           RegWr <= '1';
           RegDst <= '1';
           ALUSrc <= '0';
           Branch <= '0';
           MemWr <= '0';
           MemtoReg <= '0';
           ALUOp <= "10";
           Jump <= '0';
      when "1011" =>
           RegWr <= '1';
           RegDst <= '0';
           ALUSrc <= '1';
           Branch <= '0';
           MemWr <= '0';
           MemtoReg <= '1';
           ALUOp <= "00";
           Jump <= '0';
      when "1111" =>
           RegWr <= '0';
           RegDst <= '0';
           ALUSrc <= '1';
           Branch <= '0';
           MemWr <= '1';
           MemtoReg <= '0';
           ALUOp <= "00";
           Jump <= '0';
      when "1000" =>
           RegWr <= '0';
           RegDst <= '0';
           ALUSrc <= '0';
           Branch <= '1';
           MemWr <= '0';
           MemtoReg <= '0';
           ALUOp <= "01";
           Jump <= '0';
      when "0100" =>
           RegWr <= '1';
           RegDst <= '0';
           ALUSrc <= '1';
           Branch <= '0';
           MemWr <= '0';
           MemtoReg <= '0';
           ALUOp <= "00";
           Jump <= '0';
      when "0010" =>
           RegWr <= '0';
           RegDst <= '0';
           ALUSrc <= '0';
           Branch <= '0';
           MemWr <= '0';
           MemtoReg <= '0';
           ALUOp <= "00";
           Jump <= '1';
     when others =>
           RegWr <= '0';
           RegDst <= '0';
           ALUSrc <= '0';
           Branch <= '0';
           MemWr <= '0';
           MemtoReg <= '0';
           ALUOp <= "00";
           Jump <= '0';
   end case;
  end process;
end Behavioral;

