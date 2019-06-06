LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY COMPARADOR1BIT IS 
	PORT(
		SE1,SE2,SoEq,SoMt,SoLt:IN STD_LOGIC;
		SEq,SMt,SLt:OUT STD_LOGIC);
END COMPARADOR1BIT;
ARCHITECTURE compara1BIT OF COMPARADOR1BIT IS
SIGNAL S:STD_LOGIC;
BEGIN
	S<=((SE1)XNOR(SE2));
	SEq<=(S)AND(SoEq);
	SMt<=((SE1)AND(NOT(SE2))AND(SoEq))OR(SoMt);
	SLt<=((SE2)AND(NOT(SE1))AND(SoEq))OR(SoLt);
END compara1BIT;