Library ieee;
use ieee.std_logic_1164.all;
ENTITY OR8BITS IS
	PORT(X,Y:IN STD_LOGIC_VECTOR(7 downto 0);
			SOR:OUT STD_LOGIC_VECTOR(7 downto 0));
END OR8BITS;
ARCHITECTURE or8 of OR8BITS is
SIGNAL So:STD_LOGIC_VECTOR(7 downto 0);
BEGIN
f: for i in 0 to 7 generate
	So(i)<=X(i)OR(Y(i));
END GENERATE;
SOR<=So;
END or8;