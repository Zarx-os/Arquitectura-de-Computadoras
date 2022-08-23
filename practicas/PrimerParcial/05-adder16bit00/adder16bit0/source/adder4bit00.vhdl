library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder4bit00.all;

entity adder4bit00 is
	port(
			Ai:in std_logic_vector(15 downto 0);
			Bi:in std_logic_vector(15 downto 0);
			So:out std_logic_vector(15 downto 0);
			SL:in std_logic;
			LED:out std_logic
	);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is
	signal SA,SB,CS:std_logic_vector(15 downto 0);
	signal Sx:std_logic;
begin	
--Primer bloque
	A00: xor00 port map( Ax=>SL,
					     Bx=>Bi(0),
						 Yx=>SB(0)
						 );
					  
	A01:fa00 port map(A00=>Ai(0),
					  B00=>SB(0),
					  S00=>SA(0),
					  C00=>SL,
					  C01=>CS(0)
					  );
					  
	A02: and00 port map(Aa=>Sx,
					    Ba=>SA(0),
					    Ya=>So(0));
		
--Segundo bloque

	A03: xor00 port map( Ax=>SL,
					     Bx=>Bi(1),
						 Yx=>SB(1)
						 );
					  
	A04:fa00 port map(A00=>Ai(1),
					  B00=>SB(1),
					  S00=>SA(1),
					  C00=>CS(0),
					  C01=>CS(1)
					  );
					  
	A05: and00 port map(Aa=>Sx,
					    Ba=>SA(1),
					    Ya=>So(1));
						
--Tercer bloque
		
	A06: xor00 port map( Ax=>SL,
					     Bx=>Bi(2),
						 Yx=>SB(2)
						 );
					  
	A07:fa00 port map(A00=>Ai(2),
					  B00=>SB(2),
					  S00=>SA(2),
					  C00=>CS(1),
					  C01=>CS(2)
					  );
					  
	A08: and00 port map(Aa=>Sx,
					    Ba=>SA(2),
					    Ya=>So(2));
	
--Cuarto bloque
	A09: xor00 port map(Ax=>SL,
					     Bx=>Bi(3),
						 Yx=>SB(3)
						 );
					  
	A10:fa00 port map(A00=>Ai(3),
					  B00=>SB(3),
					  S00=>SA(3),
					  C00=>CS(2),
					  C01=>CS(3)
					  );
					  
	A11: and00 port map(Aa=>Sx,
					    Ba=>SA(3),
					    Ya=>So(3));
						
--Quinto bloque
	A12: xor00 port map(Ax=>SL,
					     Bx=>Bi(4),
						 Yx=>SB(4)
						 );
					  
	A13:fa00 port map(A00=>Ai(4),
					  B00=>SB(4),
					  S00=>SA(4),
					  C00=>CS(3),
					  C01=>CS(4)
					  );
					  
	A14: and00 port map(Aa=>Sx,
					    Ba=>SA(4),
					    Ya=>So(4));
--Sexto bloque
	A15: xor00 port map(Ax=>SL,
					     Bx=>Bi(5),
						 Yx=>SB(5)
						 );
					  
	A16:fa00 port map(A00=>Ai(5),
					  B00=>SB(5),
					  S00=>SA(5),
					  C00=>CS(4),
					  C01=>CS(5)
					  );
					  
	A17: and00 port map(Aa=>Sx,
					    Ba=>SA(5),
					    Ya=>So(5));

--Septimo bloque
	A18: xor00 port map(Ax=>SL,
					     Bx=>Bi(6),
						 Yx=>SB(6)
						 );
					  
	A19:fa00 port map(A00=>Ai(6),
					  B00=>SB(6),
					  S00=>SA(6),
					  C00=>CS(5),
					  C01=>CS(6)
					  );
					  
	A20: and00 port map(Aa=>Sx,
					    Ba=>SA(6),
					    Ya=>So(6));
						
--Octavo bloque
	A21: xor00 port map(Ax=>SL,
					     Bx=>Bi(7),
						 Yx=>SB(7)
						 );
					  
	A22:fa00 port map(A00=>Ai(7),
					  B00=>SB(7),
					  S00=>SA(7),
					  C00=>CS(6),
					  C01=>CS(7)
					  );
					  
	A23: and00 port map(Aa=>Sx,
					    Ba=>SA(7),
					    Ya=>So(7));
						
--Noveno bloque
	A24: xor00 port map(Ax=>SL,
					     Bx=>Bi(8),
						 Yx=>SB(8)
						 );
					  
	A25:fa00 port map(A00=>Ai(8),
					  B00=>SB(8),
					  S00=>SA(8),
					  C00=>CS(7),
					  C01=>CS(8)
					  );
					  
	A26: and00 port map(Aa=>Sx,
					    Ba=>SA(8),
					    Ya=>So(8));
						
--Decimo bloque
	A27: xor00 port map(Ax=>SL,
					     Bx=>Bi(9),
						 Yx=>SB(9)
						 );
					  
	A28:fa00 port map(A00=>Ai(9),
					  B00=>SB(9),
					  S00=>SA(9),
					  C00=>CS(8),
					  C01=>CS(9)
					  );
					  
	A29: and00 port map(Aa=>Sx,
					    Ba=>SA(9),
					    Ya=>So(9));
--Onceavo bloque
	A30: xor00 port map(Ax=>SL,
					     Bx=>Bi(10),
						 Yx=>SB(10)
						 );
					  
	A31:fa00 port map(A00=>Ai(10),
					  B00=>SB(10),
					  S00=>SA(10),
					  C00=>CS(9),
					  C01=>CS(10)
					  );
					  
	A32: and00 port map(Aa=>Sx,
					    Ba=>SA(10),
					    Ya=>So(10));
--Doceavo bloque
	A33: xor00 port map(Ax=>SL,
					     Bx=>Bi(11),
						 Yx=>SB(11)
						 );
					  
	A34:fa00 port map(A00=>Ai(11),
					  B00=>SB(11),
					  S00=>SA(11),
					  C00=>CS(10),
					  C01=>CS(11)
					  );
					  
	A35: and00 port map(Aa=>Sx,
					    Ba=>SA(11),
					    Ya=>So(11));
--Treceavo bloque
	A36: xor00 port map(Ax=>SL,
					     Bx=>Bi(12),
						 Yx=>SB(12)
						 );
					  
	A37:fa00 port map(A00=>Ai(12),
					  B00=>SB(12),
					  S00=>SA(12),
					  C00=>CS(11),
					  C01=>CS(12)
					  );
					  
	A38: and00 port map(Aa=>Sx,
					    Ba=>SA(12),
					    Ya=>So(12));
--Catorceavo bloque
	A39: xor00 port map(Ax=>SL,
					     Bx=>Bi(13),
						 Yx=>SB(13)
						 );
					  
	A40:fa00 port map(A00=>Ai(13),
					  B00=>SB(13),
					  S00=>SA(13),
					  C00=>CS(12),
					  C01=>CS(13)
					  );
					  
	A41: and00 port map(Aa=>Sx,
					    Ba=>SA(13),
					    Ya=>So(13));
--Quince bloque
	A42: xor00 port map(Ax=>SL,
					     Bx=>Bi(14),
						 Yx=>SB(14)
						 );
					  
	A43:fa00 port map(A00=>Ai(14),
					  B00=>SB(14),
					  S00=>SA(14),
					  C00=>CS(13),
					  C01=>CS(14)
					  );
					  
	A44: and00 port map(Aa=>Sx,
					    Ba=>SA(14),
					    Ya=>So(14));
						
						
--16 bloque
	A45: xor00 port map(Ax=>SL,
					     Bx=>Bi(15),
						 Yx=>SB(15)
						 );
					  
	A46:fa00 port map(A00=>Ai(15),
					  B00=>SB(15),
					  S00=>SA(15),
					  C00=>CS(14),
					  C01=>CS(15)
					  );
					  
	A47: and00 port map(Aa=>Sx,
					    Ba=>SA(15),
					    Ya=>So(15));				
						
						
						
						
--LED y ACARREO						
	A48:xor00 port map(
					  Ax=>CS(14),
					  Bx=>CS(15),
					  Yx=>LED
					 );
					 
	A49:xnor00 port map(
					  Axn=>CS(14),
					  Bxn=>CS(15),
					  Yxn=>Sx
					 );

end adder4bit0;