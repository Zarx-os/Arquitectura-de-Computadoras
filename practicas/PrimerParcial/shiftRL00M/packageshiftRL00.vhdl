library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;


package packageshiftRL00 is

	component osc00
	port(oscout0: inout std_logic;
		 cdiv: in std_logic_vector(4 downto 0));
	end component;
	
	component shiftRL
	port(clks: in std_logic;
		 ens: in std_logic;
		 Sel: in std_logic_vector(3 downto 0);
		 incs: in std_logic_vector(3 downto 0);
		 ins: in std_logic_vector(7 downto 0);
		 outs: inout std_logic_vector(7 downto 0));
	end component;

end packageshiftRL00;