--------------------------------------------------------------------------------
-- imem.vhd - fib.mips
-- Created on 9/28/2015 by MiniMIPS Sim
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

constant code : rom :=(x"40",x"41",  -- addi $r1, $r0, 1
                       x"40",x"80",  -- addi $r2, $r0, 0
                       x"40",x"CA",  -- addi $r3, $r0, 10
                       x"FA",x"80",  -- sw   $r2, 0($r5)
                       x"45",x"C0",  -- addi $LEDs, $r2, 0
                       x"FA",x"41",  -- sw   $r1, 1($r5)
                       x"43",x"C0",  -- addi $LEDs, $r1, 0
                       x"02",x"90",  -- add  $r2, $r1, $r2
                       x"04",x"48",  -- add  $r1, $r2, $r1
                       x"4B",x"42",  -- addi $r5, $r5, 2
                       x"49",x"01",  -- addi $r4, $r4, 1
                       x"88",x"C1",  -- beq  $r3, $r4, 1
                       x"20",x"03",  -- j    3
                       x"FA",x"80",  -- sw   $r2, 0($r5)
                       x"FA",x"41",  -- sw   $r1, 1($r5)
					   OTHERS => x"00");  
begin
    Instr(15 downto 8) <= code(conv_integer(Addr));
    Instr(7 downto 0) <= code(conv_integer(Addr)+1);
end Behavioral;

