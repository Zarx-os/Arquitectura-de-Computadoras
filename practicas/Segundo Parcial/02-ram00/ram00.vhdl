library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageram00.all;

entity ram00 is
	port(
		  clk0:inout std_logic;
		  cdiv0:in std_logic_vector(4 downto 0);
		  re0, rw0: in std_logic;
		  inkey0:in std_logic_vector(3 downto 0);
		  contW0:inout std_logic_vector(5 downto 0);
		  contR0:inout std_logic_vector(5 downto 0);
		  outr0:inout std_logic_vector(3 downto 0);
		  aux:inout std_logic_vector(3 downto 0);
		  outword0:out std_logic_vector(6 downto 0);
		  outtransist0:out std_logic_vector(3 downto 0)
		);
end ram00;

architecture ram0 of ram00 is 
signal swordcoder, swordram: std_logic_vector(6 downto 0);

begin
outtransist0<="0001";
aux<=outr0;
	RA00: osc00 port map(clk0=>clk0,
							cdiv0=>cdiv0);
	RA01: contring00 port map(clkr=>clk0,
								resetr=>re0,
								rwr=>rw0,
								outr=>outr0);
	RA02: coder00 port map(clkc=>clk0,
							resetc=>re0,
							rwc=>rw0,
							incontc=>outr0,
							inkeyc=>inkey0,
							outcontwritec=>contW0,
							outcoderc=>swordcoder);
	RA03: memram00 port map(clkra=>clk0,
							resetra=>re0,
							rwra=>rw0,
							incontWra=>contW0,
							inwordra=>swordcoder,
							incontRra=>contR0,
							outwordra=>swordram
							);
	RA04: contRead00 port map(clkrd=>clk0,
								resetrd=>re0,
								rwrd=>rw0,
								incontcoderrd=>contW0,
								outcontrd=>contR0);
	RA05: muxram00 port map(resetmux=>re0,
								rwmux=>rw0,
								inwordcodermux=>swordcoder,
								inwordRammux=>swordram,
								outwordmux=>outword0);
	


end ram0;