LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY INVERSORC2 IS 
	PORT(
		EC21:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		nC2E:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cout:OUT STD_LOGIC);
END INVERSORC2;
ARCHITECTURE invertec2 OF INVERSORc2 IS
COMPONENT SOMA8BITS
	PORT(Carryin:IN STD_LOGIC;
		X1,X2:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Sout:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Carryout:OUT STD_LOGIC);
END COMPONENT;
SIGNAL c:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL d:STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	c(0)<=NOT(EC21(0));
	d(0)<='1';
f: for i in 1 to 7 generate
		c(i)<=NOT(EC21(i));
		d(i)<='0';
END generate;
	Inv:SOMA8BITS PORT MAP(Carryin=>'0',X1=>c,X2=>d,Sout=>nC2E,Carryout=>Cout);
END invertec2;