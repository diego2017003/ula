LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY ula IS
	Port(En:IN STD_logic_Vector(7 downto 0);
			Des:IN STD_logic_Vector(7 downto 0);
			Sd: OUT STD_logic_Vector(15 downto 0));
END ula;
Architecture deslocar of ula is 
COMPONENT SOMA16BITS
	PORT(Carryin:IN STD_logic;
		X1,X2:IN STD_logic_VECTOR(15 DOWNTO 0);
		Sout:OUT STD_logic_VECTOR(15 DOWNTO 0);
	Carryout:OUT STD_logic);
END COMPONENT;
Signal d0e,d0,d1,d2,d3,d4,d5,d6,d7 :STD_logic_Vector(15 downto 0);
Signal r0,r1,r2,r3,r4,r5,r6,r7 :STD_logic_Vector(15 downto 0);
signal c0: STD_logic_VECTOR(6 dowNTO 0);
BEGIN

f0:	for i in 0 to 7 generate
		d0e(i)<=En(i);
		d0(i)<=Des(0)AND(En(i));	
	END generate;
	d0e(8)<='0';d0e(9)<='0';d0e(10)<='0';d0e(11)<='0';d0e(12)<='0';d0e(13)<='0';d0e(14)<='0';d0e(15)<='0';
	d0(8)<='0';d0(9)<='0';d0(10)<='0';d0(11)<='0';d0(12)<='0';d0(13)<='0';d0(14)<='0';d0(15)<='0';
	d1(0)<='0';d2(0)<='0';d2(1)<='0';d3(0)<='0';d3(1)<='0';d3(2)<='0';
	d4(0)<='0';d4(1)<='0';d4(2)<='0';d4(3)<='0';d5(0)<='0';d5(1)<='0';d5(2)<='0';d5(3)<='0';d5(4)<='0';
	d6(0)<='0';d6(1)<='0';d6(2)<='0';d6(3)<='0';d6(4)<='0';d6(5)<='0';
	d7(0)<='0';d7(1)<='0';d7(2)<='0';d7(3)<='0';d7(4)<='0';d7(5)<='0';d7(6)<='0';
f1:for i in 1 to 15 generate
		d1(i)<=Des(1)AND(d0e(i-1));	
	END generate;
f2:	for i in 2 to 15 generate
		d2(i)<=Des(2)AND(d0e(i-2));	
	END generate;
f3:	for i in 3 to 15 generate
		d3(i)<=Des(3)AND(d0e(i-3));	
	END generate;
f4:	for i in 4 to 15 generate
		d4(i)<=Des(4)AND(d0e(i-4));	
	END generate;
f5:	for i in 5 to 15 generate
		d5(i)<=Des(5)AND(d0e(i-5));	
	END generate;
f6:	for i in 6 to 15 generate
		d6(i)<=Des(6)AND(d0e(i-6));	
	END generate;
f7:	for i in 7 to 15 generate
		d7(i)<=Des(7)AND(d0e(i-7));	
	END generate;
	s1: SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d0,X2=>d1,Sout=>r0,Carryout=>c0(0));
	s2:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d2,X2=>d3,Sout=>r1,Carryout=>c0(1));
	s3:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d4,X2=>d5,Sout=>r2,Carryout=>c0(2));
	s4:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>d6,X2=>d7,Sout=>r3,Carryout=>c0(3));
	s5:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>r0,X2=>r1,Sout=>r4,Carryout=>c0(4));
	s6:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>r2,X2=>r3,Sout=>r5,Carryout=>c0(5));
	s7:SOMA16BiTS PORT MAP(Carryin=>'0',X1=>r4,X2=>r5,Sout=>r6,Carryout=>c0(6));
	sd<=r6;
END deslocar;