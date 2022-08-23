library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder4bit00.all;

entity adder4bit00 is
	port(
			Ai:in std_logic_vector(3 downto 0);
			Bi:in std_logic_vector(3 downto 0);
			So:out std_logic_vector(3 downto 0);
			SL:in std_logic;
			LED:out std_logic
	);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is
	signal SA,SB,CS:std_logic_vector(3 downto 0);
	signal Sx:std_logic;
begin	
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
	A12:xor00 port map(
					  Ax=>CS(2),
					  Bx=>CS(3),
					  Yx=>LED
					 );
					 
	A13:xnor00 port map(
					  Axn=>CS(2),
					  Bxn=>CS(3),
					  Yxn=>Sx
					 );

end adder4bit0;