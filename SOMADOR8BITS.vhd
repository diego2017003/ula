LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY SOMA8BITS IS 
	PORT(Carryin:IN STD_logic;
		X1,X2:IN STD_logic_VECTOR(7 DOWNTO 0);
		Sout:OUT STD_logic_VECTOR(7 DOWNTO 0);
	Carryout:OUT STD_logic);
END SOMA8BITS;
ARCHITECTURE soma8b OF SOMA8BITS IS
COMPONENT SOMA1B
	PORT(a,b,Cin:IN STD_logic;
	s,Cout:OUT STD_logic);
END COMPONENT;
SIGNAL c:STD_logic_VECTOR(8 DOWNTO 0);
BEGIN
c(0)<=Carryin;
gen:FOR i IN 0 TO 7 GENERATE
	l:SOMA1B PORT MAP(Cin=>c(i),a=>X1(i),b=>X2(i),s=>Sout(i),Cout=>c(i+1));
	END GENERATE;
	Carryout<=c(8);
END soma8b;