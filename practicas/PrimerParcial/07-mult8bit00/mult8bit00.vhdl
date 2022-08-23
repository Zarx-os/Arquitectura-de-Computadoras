library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagemult8bit00.all;

entity mult8bit00 is
	port(
		Ai:in std_logic_vector(7 downto 0);
		Bi:in std_logic_vector(7 downto 0);
		R:out std_logic_vector(15 downto 0)
	);
end mult8bit00;

architecture mult8bit0 of mult8bit00 is
	signal sa00,ss00,ss01,ss02,ss03,ss04,ss05,ss06:std_logic_vector(6 downto 0);
	signal sa01,sa02,sa03,sa04,sa05,sa06,sa07,sc00,sc01,sc02,sc03,sc04,sc05,sc06:std_logic_vector(7 downto 0);
	
begin	

--Primer nivel AND
	
	M00: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(0),
						 Ya=>R(0));
						 
	M01: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(0),
						 Ya=>sa00(0));
						 
	M02: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(0),
						 Ya=>sa00(1));
						 
	M03: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(0),
						 Ya=>sa00(2));
						 
	M04: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(0),
						 Ya=>sa00(3));	
						 
	M05: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(0),
						 Ya=>sa00(4));	
						 
	M06: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(0),
						 Ya=>sa00(5));
						 
	M07: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(0),
						 Ya=>sa00(6));	
--Segundo nivel AND
	
	M08: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(1),
						 Ya=>sa01(0));
						 
	M09: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(1),
						 Ya=>sa01(1));
						 
	M10: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(1),
						 Ya=>sa01(2));
						 
	M11: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(1),
						 Ya=>sa01(3));
						 
	M12: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(1),
						 Ya=>sa01(4));
						 
	M13: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(1),
						 Ya=>sa01(5));	
						 
	M14: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(1),
						 Ya=>sa01(6));
						 
	M15: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(1),
						 Ya=>sa01(7));
--Tercer Bloque FA00
	
	M16: fa00 port map(C00=>'0',
						A00=>sa00(0),
						B00=>sa01(0),
						S00=>R(1),
						C01=>sc00(0));
						
	M17: fa00 port map(C00=>sc00(0),
						A00=>sa00(1),
						B00=>sa01(1),
						S00=>ss00(0),
						C01=>sc00(1));
						
	M18: fa00 port map(C00=>sc00(1),
						A00=>sa00(2),
						B00=>sa01(2),
						S00=>ss00(1),
						C01=>sc00(2));
						
	M19: fa00 port map(C00=>sc00(2),
						A00=>sa00(3),
						B00=>sa01(3),
						S00=>ss00(2),
						C01=>sc00(3));
						
	M20: fa00 port map(C00=>sc00(3),
						A00=>sa00(4),
						B00=>sa01(4),
						S00=>ss00(3),
						C01=>sc00(4));
						
	M21: fa00 port map(C00=>sc00(4),
						A00=>sa00(5),
						B00=>sa01(5),
						S00=>ss00(4),
						C01=>sc00(5));
						
	M22: fa00 port map(C00=>sc00(5),
						A00=>sa00(6),
						B00=>sa01(6),
						S00=>ss00(5),
						C01=>sc00(6));
						
	M23: fa00 port map(C00=>sc00(6),
						A00=>'0',
						B00=>sa01(7),
						S00=>ss00(6),
						C01=>sc00(7)); 
	
--Cuarto nivel and
	
	M24: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(2),
						 Ya=>sa02(0));
						 
	M25: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(2),
						 Ya=>sa02(1));
						 
	M26: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(2),
						 Ya=>sa02(2));
						 
	M27: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(2),
						 Ya=>sa02(3));
						 
	M28: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(2),
						 Ya=>sa02(4));
						 
	M29: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(2),
						 Ya=>sa02(5));	
						 
	M30: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(2),
						 Ya=>sa02(6));
						 
	M31: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(2),
						 Ya=>sa02(7));
--Quinto nivel fa00
	
	M32: fa00 port map(C00=>'0',
						A00=>ss00(0),
						B00=>sa02(0),
						S00=>R(2),
						C01=>sc01(0));
						
	M33: fa00 port map(C00=>sc01(0),
						A00=>ss00(1),
						B00=>sa02(1),
						S00=>ss01(0),
						C01=>sc01(1));
	
	M34: fa00 port map(C00=>sc01(1),
						A00=>ss00(2),
						B00=>sa02(2),
						S00=>ss01(1),
						C01=>sc01(2));
						
	M35: fa00 port map(C00=>sc01(2),
						A00=>ss00(3),
						B00=>sa02(3),
						S00=>ss01(2),
						C01=>sc01(3));
	
	M36: fa00 port map(C00=>sc01(3),
						A00=>ss00(4),
						B00=>sa02(4),
						S00=>ss01(3),
						C01=>sc01(4));
	
	M37: fa00 port map(C00=>sc01(4),
						A00=>ss00(5),
						B00=>sa02(5),
						S00=>ss01(4),
						C01=>sc01(5));
	
	M38: fa00 port map(C00=>sc01(5),
						A00=>ss00(6),
						B00=>sa02(6),
						S00=>ss01(5),
						C01=>sc01(6));
						
	M39: fa00 port map(C00=>sc01(6),
						A00=>sc00(7),
						B00=>sa02(7),
						S00=>ss01(6),
						C01=>sc01(7));
						
--Sexto nivel and
	
	M40: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(3),
						 Ya=>sa03(0));
						 
	M41: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(3),
						 Ya=>sa03(1));
						 
	M42: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(3),
						 Ya=>sa03(2));
						 
	M43: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(3),
						 Ya=>sa03(3));
						 
	M44: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(3),
						 Ya=>sa03(4));
						 
	M45: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(3),
						 Ya=>sa03(5));	
						 
	M46: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(3),
						 Ya=>sa03(6));
						 
	M47: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(3),
						 Ya=>sa03(7));
						 
--Septimo nivel fa00
	
	
	M48: fa00 port map(C00=>'0',
						A00=>ss01(0),
						B00=>sa03(0),
						S00=>R(3),
						C01=>sc02(0));
						
	M49: fa00 port map(C00=>sc02(0),
						A00=>ss01(1),
						B00=>sa03(1),
						S00=>ss02(0),
						C01=>sc02(1));
	
	M50: fa00 port map(C00=>sc02(1),
						A00=>ss01(2),
						B00=>sa03(2),
						S00=>ss02(1),
						C01=>sc02(2));
						
	M51: fa00 port map(C00=>sc02(2),
						A00=>ss01(3),
						B00=>sa03(3),
						S00=>ss02(2),
						C01=>sc02(3));
	
	M52: fa00 port map(C00=>sc02(3),
						A00=>ss01(4),
						B00=>sa03(4),
						S00=>ss02(3),
						C01=>sc02(4));
	
	M53: fa00 port map(C00=>sc02(4),
						A00=>ss01(5),
						B00=>sa03(5),
						S00=>ss02(4),
						C01=>sc02(5));
	
	M54: fa00 port map(C00=>sc02(5),
						A00=>ss01(6),
						B00=>sa03(6),
						S00=>ss02(5),
						C01=>sc02(6));
						
	M55: fa00 port map(C00=>sc02(6),
						A00=>sc01(7),
						B00=>sa03(7),
						S00=>ss02(6),
						C01=>sc02(7));
						
						
--Octavo nivel and
	
	M56: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(4),
						 Ya=>sa04(0));
						 
	M57: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(4),
						 Ya=>sa04(1));
						 
	M58: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(4),
						 Ya=>sa04(2));
						 
	M59: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(4),
						 Ya=>sa04(3));
						 
	M60: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(4),
						 Ya=>sa04(4));
						 
	M61: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(4),
						 Ya=>sa04(5));	
						 
	M62: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(4),
						 Ya=>sa04(6));
						 
	M63: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(4),
						 Ya=>sa04(7));

--Noveno nivel fa00
	
	
	M64: fa00 port map(C00=>'0',
						A00=>ss02(0),
						B00=>sa04(0),
						S00=>R(4),
						C01=>sc03(0));
						
	M65: fa00 port map(C00=>sc03(0),
						A00=>ss02(1),
						B00=>sa04(1),
						S00=>ss03(0),
						C01=>sc03(1));
	
	M66: fa00 port map(C00=>sc03(1),
						A00=>ss02(2),
						B00=>sa04(2),
						S00=>ss03(1),
						C01=>sc03(2));
						
	M67: fa00 port map(C00=>sc03(2),
						A00=>ss02(3),
						B00=>sa04(3),
						S00=>ss03(2),
						C01=>sc03(3));
	
	M68: fa00 port map(C00=>sc03(3),
						A00=>ss02(4),
						B00=>sa04(4),
						S00=>ss03(3),
						C01=>sc03(4));
	
	M69: fa00 port map(C00=>sc03(4),
						A00=>ss02(5),
						B00=>sa04(5),
						S00=>ss03(4),
						C01=>sc03(5));
	
	M70: fa00 port map(C00=>sc03(5),
						A00=>ss02(6),
						B00=>sa04(6),
						S00=>ss03(5),
						C01=>sc03(6));
						
	M71: fa00 port map(C00=>sc03(6),
						A00=>sc02(7),
						B00=>sa04(7),
						S00=>ss03(6),
						C01=>sc03(7));
						
--Decimo nivel and
	
	
	M72: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(5),
						 Ya=>sa05(0));
						 
	M73: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(5),
						 Ya=>sa05(1));
						 
	M74: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(5),
						 Ya=>sa05(2));
						 
	M75: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(5),
						 Ya=>sa05(3));
						 
	M76: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(5),
						 Ya=>sa05(4));
						 
	M77: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(5),
						 Ya=>sa05(5));	
						 
	M78: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(5),
						 Ya=>sa05(6));
						 
	M79: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(5),
						 Ya=>sa05(7));
						 
						 
--Onceavo nivel fa00
	
	
	M80: fa00 port map(C00=>'0',
						A00=>ss03(0),
						B00=>sa05(0),
						S00=>R(5),
						C01=>sc04(0));
						
	M81: fa00 port map(C00=>sc04(0),
						A00=>ss03(1),
						B00=>sa05(1),
						S00=>ss04(0),
						C01=>sc04(1));
	
	M82: fa00 port map(C00=>sc04(1),
						A00=>ss03(2),
						B00=>sa05(2),
						S00=>ss04(1),
						C01=>sc04(2));
						
	M83: fa00 port map(C00=>sc04(2),
						A00=>ss03(3),
						B00=>sa05(3),
						S00=>ss04(2),
						C01=>sc04(3));
	
	M84: fa00 port map(C00=>sc04(3),
						A00=>ss03(4),
						B00=>sa05(4),
						S00=>ss04(3),
						C01=>sc04(4));
	
	M85: fa00 port map(C00=>sc04(4),
						A00=>ss03(5),
						B00=>sa05(5),
						S00=>ss04(4),
						C01=>sc04(5));
	
	M86: fa00 port map(C00=>sc04(5),
						A00=>ss03(6),
						B00=>sa05(6),
						S00=>ss04(5),
						C01=>sc04(6));
						
	M87: fa00 port map(C00=>sc04(6),
						A00=>sc03(7),
						B00=>sa05(7),
						S00=>ss04(6),
						C01=>sc04(7));
						
						
--Doceavo nivel and
	
	
	M88: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(6),
						 Ya=>sa06(0));
						 
	M89: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(6),
						 Ya=>sa06(1));
						 
	M90: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(6),
						 Ya=>sa06(2));
						 
	M91: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(6),
						 Ya=>sa06(3));
						 
	M92: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(6),
						 Ya=>sa06(4));
						 
	M93: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(6),
						 Ya=>sa06(5));	
						 
	M94: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(6),
						 Ya=>sa06(6));
						 
	M95: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(6),
						 Ya=>sa06(7));
	
--Treceavo nivel fa00
	
	
	M96: fa00 port map(C00=>'0',
						A00=>ss04(0),
						B00=>sa06(0),
						S00=>R(6),
						C01=>sc05(0));
						
	M97: fa00 port map(C00=>sc05(0),
						A00=>ss04(1),
						B00=>sa06(1),
						S00=>ss05(0),
						C01=>sc05(1));
	
	M98: fa00 port map(C00=>sc05(1),
						A00=>ss04(2),
						B00=>sa06(2),
						S00=>ss05(1),
						C01=>sc05(2));
						
	M99: fa00 port map(C00=>sc05(2),
						A00=>ss04(3),
						B00=>sa06(3),
						S00=>ss05(2),
						C01=>sc05(3));
	
	M100: fa00 port map(C00=>sc05(3),
						A00=>ss04(4),
						B00=>sa06(4),
						S00=>ss05(3),
						C01=>sc05(4));
	
	M101: fa00 port map(C00=>sc05(4),
						A00=>ss04(5),
						B00=>sa06(5),
						S00=>ss05(4),
						C01=>sc05(5));
	
	M102: fa00 port map(C00=>sc05(5),
						A00=>ss04(6),
						B00=>sa06(6),
						S00=>ss05(5),
						C01=>sc05(6));
						
	M103: fa00 port map(C00=>sc05(6),
						A00=>sc04(7),
						B00=>sa06(7),
						S00=>ss05(6),
						C01=>sc05(7));
						
--Catorce nivel and
	
	
	M104: and00 port map(Aa=>Ai(0),
					     Ba=>Bi(7),
						 Ya=>sa07(0));
						 
	M105: and00 port map(Aa=>Ai(1),
					     Ba=>Bi(7),
						 Ya=>sa07(1));
						 
	M106: and00 port map(Aa=>Ai(2),
					     Ba=>Bi(7),
						 Ya=>sa07(2));
						 
	M107: and00 port map(Aa=>Ai(3),
					     Ba=>Bi(7),
						 Ya=>sa07(3));
						 
	M108: and00 port map(Aa=>Ai(4),
					     Ba=>Bi(7),
						 Ya=>sa07(4));
						 
	M109: and00 port map(Aa=>Ai(5),
					     Ba=>Bi(7),
						 Ya=>sa07(5));	
						 
	M110: and00 port map(Aa=>Ai(6),
					     Ba=>Bi(7),
						 Ya=>sa07(6));
						 
	M111: and00 port map(Aa=>Ai(7),
					     Ba=>Bi(7),
						 Ya=>sa07(7));
						 

--Quince nivel fa00
	
	
	M112: fa00 port map(C00=>'0',
						A00=>ss05(0),
						B00=>sa07(0),
						S00=>R(7),
						C01=>sc06(0));
						
	M113: fa00 port map(C00=>sc06(0),
						A00=>ss05(1),
						B00=>sa07(1),
						S00=>R(8),
						C01=>sc06(1));
	
	M114: fa00 port map(C00=>sc06(1),
						A00=>ss05(2),
						B00=>sa07(2),
						S00=>R(9),
						C01=>sc06(2));
						
	M115: fa00 port map(C00=>sc06(2),
						A00=>ss05(3),
						B00=>sa07(3),
						S00=>R(10),
						C01=>sc06(3));
	
	M116: fa00 port map(C00=>sc06(3),
						A00=>ss05(4),
						B00=>sa07(4),
						S00=>R(11),
						C01=>sc06(4));
	
	M117: fa00 port map(C00=>sc06(4),
						A00=>ss05(5),
						B00=>sa07(5),
						S00=>R(12),
						C01=>sc06(5));
	
	M118: fa00 port map(C00=>sc06(5),
						A00=>ss05(6),
						B00=>sa07(6),
						S00=>R(13),
						C01=>sc06(6));
						
	M119: fa00 port map(C00=>sc06(6),
						A00=>sc05(7),
						B00=>sa07(7),
						S00=>R(14),
						C01=>R(15));
	
end mult8bit0;