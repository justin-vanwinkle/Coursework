----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:13:10 04/28/2009 
-- Design Name: 
-- Module Name:    SignExt8 - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SignExt8 is
    Port ( I : in  STD_LOGIC_VECTOR (5 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end SignExt8;

architecture Behavioral of SignExt8 is

begin

  O <= I(5) & I(5) & I;

end Behavioral;

