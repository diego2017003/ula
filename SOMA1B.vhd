LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY SOMA1B IS 
PORT(a,b,Cin:IN STD_logic;
	s,Cout:OUT STD_logic);
END SOMA1B;
ARCHITECTURE SOMADOR OF SOMA1B IS
BEGIN
s<=(a)XOR(Cin)XOR(b);
Cout<=((a)AND(b))OR((b)AND(Cin))OR((Cin)AND(a));
END SOMADOR;