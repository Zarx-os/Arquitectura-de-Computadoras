library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageosc00.all;

entity osc00 is
	port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
end osc00;

architecture osc0 of osc00 is
signal sclk: std_logic;

begin
	D00: oscint00 port map(osc_int => sclk);
	
	D01: div00 port map(clkdiv => sclk,
						indiv => cdiv0,
						outdiv => clk0);

end osc0;