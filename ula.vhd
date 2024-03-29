Library ieee;
use ieee.std_logic_1164.all;
ENTITY ula IS
	PORT(X,Y:IN STD_LOGIC_VECTOR(7 downto 0);
			SOR:OUT STD_LOGIC_VECTOR(7 downto 0));
END ula;
ARCHITECTURE or8 of ula is
SIGNAL So:STD_LOGIC_VECTOR(7 downto 0);
BEGIN
f: for i in 0 to 7 generate
	So(i)<=X(i)OR(Y(i));
END GENERATE;
SOR<=So;
END or8;