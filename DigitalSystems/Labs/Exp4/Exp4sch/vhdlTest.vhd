-- Vhdl test bench created from schematic C:\Users\justi_000\Dropbox\Justin\Academia\Current Courses\Digital\Exp4\exp4sch.sch - Tue Jun 23 09:55:19 2015
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
ENTITY exp4sch_exp4sch_sch_tb IS
END exp4sch_exp4sch_sch_tb;
ARCHITECTURE behavioral OF exp4sch_exp4sch_sch_tb IS 

   COMPONENT exp4sch
   PORT( X	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          S	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          Cout	:	OUT	STD_LOGIC; 
          Y	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0));
   END COMPONENT;

   SIGNAL X	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL S	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL Cout	:	STD_LOGIC;
   SIGNAL Y	:	STD_LOGIC_VECTOR (2 DOWNTO 0);

BEGIN

   UUT: exp4sch PORT MAP(
		X => X, 
		S => S, 
		Cout => Cout, 
		Y => Y
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
