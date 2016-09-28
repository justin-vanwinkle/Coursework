----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:27:53 04/28/2009 
-- Design Name: 
-- Module Name:    PCBranch - Behavioral 
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

entity PCBranch is
    Port ( Imm : in  STD_LOGIC_VECTOR (7 downto 0);
           PC : in  STD_LOGIC_VECTOR (7 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end PCBranch;

architecture Behavioral of PCBranch is

begin

  O <= PC + (Imm(6 downto 0) & '0');

end Behavioral;

