--------------------------------------------------------------------------------
%TITLE%
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity I_MEM is
    Port ( Addr : in  STD_LOGIC_VECTOR (7 downto 0);
           Instr : out  STD_LOGIC_VECTOR (15 downto 0));
end I_MEM;

architecture Behavioral of I_MEM is

type rom is array (0 to 255) of std_logic_vector (7 downto 0);

constant code : rom :=(%INSTRUCTIONS%
					   OTHERS => x"00");  
begin
    Instr(15 downto 8) <= code(conv_integer(Addr));
    Instr(7 downto 0) <= code(conv_integer(Addr)+1);
end Behavioral;

