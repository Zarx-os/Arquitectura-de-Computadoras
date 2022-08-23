library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagekey0200.all;

entity key02 is
port(
	clk0: inout std_logic;
	cdiv0: in std_logic_vector(4 downto 0);
	en0: in std_logic;
	inkey0: in std_logic_vector(3 downto 0);
	outr0: inout std_logic_vector(3 downto 0);--va a teclado
	out320: inout std_logic_vector(31 downto 0);--van a led
	outring70: inout std_logic_vector(3 downto 0);--transistores
	out7seg0: out std_logic_vector(6 downto 0)--segmentos
);
end key02;

architecture key2 of key02 is
signal scoderhexa: std_logic_vector(3 downto 0);
signal spushlc: std_logic;
begin
	K0200: osc00 port map(clk0=>clk0,
						cdiv0=>cdiv0
						);
	
	K0201: contring00 port map(
								clkr=>clk0,
								enr=>en0,
								outr=>outr0
								);
	
	K0202: coder00 port map(
							clkc=>clk0,
							enc=>en0,
							inkeyc=>inkey0,
							incontc=>outr0,
							outcoder=>scoderhexa,
							outpushc=>spushlc
							);
	
	K0203: lect00 port map(clklc=>clk0,
							enlc=>en0,
							inpushlc=>spushlc,
							inhexalc=>scoderhexa,
							out32lc=>out320);
	
	K0204: contring7seg00 port map(
									clkr7=>clk0,
									enr7=>en0,
									outr7=>outring70
									);
	
	K0205: coder7seg00 port map(
								incontcr7=>outring70,
								in32cr7=>out320,
								out7seg=>out7seg0
								 );


end key2;