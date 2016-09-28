----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:04 04/28/2009 
-- Design Name: 
-- Module Name:    RegFile - Behavioral 
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

entity RegFile is
    Port ( clk : in  STD_LOGIC;
           A1 : in  STD_LOGIC_VECTOR (2 downto 0);
           A2 : in  STD_LOGIC_VECTOR (2 downto 0);
           A3 : in  STD_LOGIC_VECTOR (2 downto 0);
           WD3 : in  STD_LOGIC_VECTOR (7 downto 0);
			  SW : in  STD_LOGIC_VECTOR (7 downto 0);
           WE3 : in  STD_LOGIC;
			  LEDS : out STD_LOGIC_VECTOR (7 downto 0);
           RD1 : out  STD_LOGIC_VECTOR (7 downto 0);
           RD2 : out  STD_LOGIC_VECTOR (7 downto 0));
end RegFile;

architecture Behavioral of RegFile is
type reg_type is array (0 to 7) of std_logic_vector(7 downto 0);
signal tmp_reg: reg_type;

begin

process (A1, clk, WE3, A3)
begin
   case A1 is
      when "000" => RD1 <= x"00";
		when "111" => RD1 <= SW;
      when others => RD1 <= tmp_reg(conv_integer(A1));
   end case;
end process;

process (A2, clk)
begin
   case A2 is
      when "000" => RD2 <= x"00";
		when "111" => RD2 <= SW;
      when others => RD2 <= tmp_reg(conv_integer(A2));
   end case;
end process;

process(clk, WE3, A3)
begin
  if clk'event and clk='1' then
    if WE3 = '1' then
		case A3 is
			when "111" => LEDS <= WD3;
			when others => tmp_reg(conv_integer(A3)) <= WD3;
		end case;
	 end if;
  end if;
end process;
end Behavioral;


