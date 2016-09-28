----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:58 04/28/2009 
-- Design Name: 
-- Module Name:    ShiftLeft - Behavioral 
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

entity ShiftLeft is
    Port ( I : in  STD_LOGIC_VECTOR (6 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end ShiftLeft;

architecture Behavioral of ShiftLeft is

begin

  O <= I & '0';

end Behavioral;

