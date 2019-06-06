Library ieee;
use ieee.std_logic_1164.all;
ENTITY AND8BITS IS
	PORT(X,Y:IN STD_LOGIC_VECTOR(7 downto 0);
			Sand:OUT STD_LOGIC_VECTOR(7 downto 0));
END AND8BITS;
ARCHITECTURE and8 of AND8BITS is
SIGNAL Sa:STD_LOGIC_VECTOR(7 downto 0);
BEGIN
f: for i in 0 to 7 generate
	Sa(i)<=X(i)AND(Y(i));
END GENERATE;
Sand<=Sa;
END and8;