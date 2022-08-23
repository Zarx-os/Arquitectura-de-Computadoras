library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity muxram00 is
	port(
		  resetmux, rwmux: in std_logic;
		  inwordcodermux: in std_logic_vector(6 downto 0);
		  inwordRammux: in std_logic_vector(6 downto 0);
		  outwordmux: out std_logic_vector(6 downto 0)
		);
end muxram00;

architecture muxram0 of muxram00 is 
signal scontrolmux: std_logic_vector(1 downto 0);
begin
scontrolmux<=(resetmux)&(rwmux);
	with scontrolmux select
		outwordmux <= inwordcodermux when "10",
					  inwordRammux when "11",
					  "0000000" when others;
end muxram0;