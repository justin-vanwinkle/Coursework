-- Vhdl test bench created from schematic C:\Users\justi_000\Dropbox\Justin\Academia\Current Courses\Digital\Exp3\Exp3Schematic.sch - Wed Jun 17 13:55:57 2015
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Exp3Schematic_Exp3Schematic_sch_tb IS
END Exp3Schematic_Exp3Schematic_sch_tb;
ARCHITECTURE behavioral OF Exp3Schematic_Exp3Schematic_sch_tb IS 

   COMPONENT Exp3Schematic
   PORT( Y	:	IN	STD_LOGIC; 
          X	:	IN	STD_LOGIC; 
          B	:	IN	STD_LOGIC; 
          A	:	IN	STD_LOGIC; 
          F	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Y	:	STD_LOGIC;
   SIGNAL X	:	STD_LOGIC;
   SIGNAL B	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC;
   SIGNAL F	:	STD_LOGIC;

BEGIN

   UUT: Exp3Schematic PORT MAP(
		Y => Y, 
		X => X, 
		B => B, 
		A => A, 
		F => F
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
