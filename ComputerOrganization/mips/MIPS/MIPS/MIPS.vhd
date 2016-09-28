----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:47:02 04/28/2009 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
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

entity MIPS is
    Port ( SW : in  STD_LOGIC_VECTOR (7 downto 0);
           LEDS : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           Inst : out  STD_LOGIC_VECTOR (15 downto 0);
           PCout : out  STD_LOGIC_VECTOR (7 downto 0);
           OpA : out  STD_LOGIC_VECTOR (7 downto 0);
           OpB : out  STD_LOGIC_VECTOR (7 downto 0);
           Res : out  STD_LOGIC_VECTOR (7 downto 0);
           Control : out  STD_LOGIC_VECTOR (7 downto 0));
end MIPS;

architecture Behavioral of MIPS is

component ALUDec
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Funct : in  STD_LOGIC_VECTOR (2 downto 0);
           ALUControl : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component ALU
    Port ( SrcA : in  STD_LOGIC_VECTOR (7 downto 0);
           SrcB : in  STD_LOGIC_VECTOR (7 downto 0);
           ALUControl : in  STD_LOGIC_VECTOR (2 downto 0);
           Zero : out  STD_LOGIC;
           ALURes : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Dmem
    Port ( clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           WD : in  STD_LOGIC_VECTOR (7 downto 0);
           RD : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component I_MEM
    Port ( Addr : in  STD_LOGIC_VECTOR (7 downto 0);
           Instr : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component MUX3bits
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component MUX8bits
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component MainDEC
    Port ( OpCode : in  STD_LOGIC_VECTOR (3 downto 0);
           RegWr : out  STD_LOGIC;
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemWr : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           Jump : out  STD_LOGIC);
end component;

component PCBranch
    Port ( Imm : in  STD_LOGIC_VECTOR (7 downto 0);
           PC : in  STD_LOGIC_VECTOR (7 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component PC
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end component;

component Plus2
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component RegFile
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
end component;

component ShiftLeft
    Port ( I : in  STD_LOGIC_VECTOR (6 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component SignExt8
    Port ( I : in  STD_LOGIC_VECTOR (5 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal jump, memtoreg, memwrite, branch, alusrc, regdst, regwrite, zero, pcsrc : std_logic;
		 
signal srca, srcb, aluresult, writedata, readdata, result, pcshift, 
       pcbr, signimm, pcplus2, prc0, prc1, prc2, leds_int : std_logic_vector(7 downto 0);
		 
signal instr :std_logic_vector(15 downto 0);

signal alucontrol, writereg : std_logic_vector(2 downto 0);

signal aluop : std_logic_vector(1 downto 0);

begin

mux0: MUX8bits
  port map( A => pcplus2,
            B => pcbr,
				sel => pcsrc,
				y => prc0
			 );
			
mux1: MUX8bits
  port map( A => prc0,
            B => pcshift,
				sel => jump,
				y => prc1
			 );

mux2: MUX3bits
  port map( A => instr(8 downto 6),
            B => instr(5 downto 3),
				sel => regdst,
				y => writereg
			 );
			 
mux3: MUX8bits
  port map( A => writedata,
            B => signimm,
				sel => alusrc,
				y => srcb
			 );
			 
mux4: MUX8bits
  port map( A => aluresult,
            B => readdata,
				sel => memtoreg,
				y => result
			 );
			 
progcnt: PC
  port map( D => prc1,
            Q => prc2,
				clk => clk,
				reset => reset
			 );
			 
incrpc: Plus2
  port map( D => prc2,
            Q => pcplus2
			 );
			 			 
insmem: I_MEM
  port map( Addr => prc2,
            Instr => instr
			 );
			 
sigext: SignExt8
  port map( I => instr(5 downto 0),
            O => signimm
			 );

pcbr1: PCBranch
  port map( Imm => signimm,
            PC => pcplus2,
				O => pcbr
			 );

alu1: ALU
  port map( SrcA => srca,
            SrcB => srcb,
            ALUControl => alucontrol,
            Zero => zero,
            ALURes => aluresult
			 );

dmem1: Dmem
  port map( clk => clk,
            WE => memwrite,
            A => aluresult,
            WD => writedata,
            RD => readdata
			 );
			 
rfile: RegFile
  port map( clk => clk,
            A1 => instr(11 downto 9),
            A2 => instr(8 downto 6),
            A3 => writereg,
            WD3 => result,
			   SW => SW,
            WE3 => regwrite,
			   LEDS => leds_int,
            RD1 => srca,
            RD2 => writedata
			 );
			
shfl: ShiftLeft
  port map( I => instr(6 downto 0),
            O => pcshift
          );
			 
pcsrc <= branch and zero;	
		 
mainc: MainDEC
  port map( OpCode => instr(15 downto 12),
            RegWr => regwrite,
            RegDst => regdst,
            ALUSrc => alusrc,
            Branch => branch,
            MemWr => memwrite,
            MemtoReg => memtoreg,
            ALUOp => aluop,
            Jump => jump
			 );

alud: ALUDec
  port map( ALUOp => aluop,
            Funct => instr(2 downto 0),
            ALUControl => alucontrol
			 );
			 
  LEDS <= leds_int;
  Inst <= instr;
  PCout <= prc2;
  OpA <= srca;
  OpB <= srcb;
  Res <= aluresult;
  Control <= regwrite & regdst & alusrc & branch & memwrite & memtoreg & jump & zero;
  
end Behavioral;

