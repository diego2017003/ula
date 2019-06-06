LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY SOMA16BITS IS 
	PORT(Carryin:IN STD_logic;
		X1,X2:IN STD_logic_VECTOR(15 DOWNTO 0);
		Sout:OUT STD_logic_VECTOR(15 DOWNTO 0);
	Carryout:OUT STD_logic);
END SOMA16BITS;
ARCHITECTURE soma16b OF SOMA16BITS IS
COMPONENT SOMA1B
	PORT(a,b,Cin:IN STD_logic;
	s,Cout:OUT STD_logic);
END COMPONENT;
SIGNAL c:STD_logic_VECTOR(16 DOWNTO 0);
BEGIN
c(0)<=Carryin;
gen:FOR i IN 0 TO 15 GENERATE
	l:SOMA1B PORT MAP(Cin=>c(i),a=>X1(i),b=>X2(i),s=>Sout(i),Cout=>c(i+1));
	END GENERATE;
	Carryout<=c(16);
END soma16b;