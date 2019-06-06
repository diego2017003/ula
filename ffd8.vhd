LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY ffd8 is 
	port(Dff8: IN STD_LOGIC_VECTOR(7 downto 0);
		clkff8,CLRN8: IN STD_LOGIC;
		Qff8:OUT STD_LOGIC_VECTOR(7 downto 0));
END ffd8;
ARCHITECTURE behaviorffd8b of ffd8 is
		COMPONENT ffd
			port(Dff,clkff,CLRN:IN STD_LOGIC;
		   Qff:OUT STD_LOGIC);
		END COMPONENT;
		begin	
			gen:FOR i IN 0 TO 7 GENERATE
			l:ffd PORT MAP(Dff=>Dff8(i),clkff=>clkff8,CLRN=>CLRN8,Qff=>Qff8(i));
	    END GENERATE;
END behaviorffd8b;	