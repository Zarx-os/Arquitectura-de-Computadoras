library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageosc00 is
	component div00 is
		port(
		clkdiv:in std_logic;
		indiv:in std_logic_vector(4 downto 0);
		oscout:inout std_logic
	);
	end component;
	component oscint00 is
	port(
	osc_int:out std_logic
	);
	end component;
end packageosc00;