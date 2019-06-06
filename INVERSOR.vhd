LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY INVERSOR IS 
	PORT(
		E:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		nE:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END INVERSOR;
ARCHITECTURE inverte OF INVERSOR IS
SIGNAL c:STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
f: for i in 0 to 7 generate
		c(i)<=NOT(E(i));
END generate;
nE<=c;
END inverte;
