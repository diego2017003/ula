LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY multiplicador8Bits IS
	Port(En:IN STD_logic_Vector(7 downto 0);
			Des:IN STD_logic_Vector(7 downto 0);
			Sd: OUT STD_logic_Vector(15 downto 0));
END multiplicador8Bits;
Architecture multiplica of multiplicador8Bits is 
COMPONENT SOMA16BITS
	PORT(Carryin:IN STD_logic;
		X1,X2:IN STD_logic_VECTOR(15 DOWNTO 0);
		Sout:OUT STD_logic_VECTOR(15 DOWNTO 0);
	Carryout:OUT STD_logic);
END COMPONENT;
Signal d0,d1,d2,d3,d4,d5,d6,d7 :STD_logic_Vector(15 downto 0);
Signal r0,r1,r2,r3,r4,r5,r6 :STD_logic_Vector(15 downto 0);
signal c0: STD_logic_VECTOR(6 dowNTO 0);
BEGIN

f0:	for i in 0 to 7 generate
		d0(i)<=Des(0)AND(En(i));	
		d1(i+1)<=Des(1)AND(En(i));	
		d2(i+2)<=Des(2)AND(En(i));	
		d3(i+3)<=Des(3)AND(En(i));
		d4(i+4)<=Des(4)AND(En(i));	
		d5(i+5)<=Des(5)AND(En(i));	
		d6(i+6)<=Des(6)AND(En(i));	
		d7(i+7)<=Des(7)AND(En(i));	
	END generate;
	s1: SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d0,X2=>d1,Sout=>r0,Carryout=>c0(0));
	s2:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d2,X2=>d3,Sout=>r1,Carryout=>c0(1));
	s3:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d4,X2=>d5,Sout=>r2,Carryout=>c0(2));
	s4:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d6,X2=>d7,Sout=>r3,Carryout=>c0(3));
	s5:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>r0,X2=>r1,Sout=>r4,Carryout=>c0(4));
	s6:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>r2,X2=>r3,Sout=>r5,Carryout=>c0(5));
	s7:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>r4,X2=>r5,Sout=>r6,Carryout=>c0(6));
	sd<=r6;
END multiplica;