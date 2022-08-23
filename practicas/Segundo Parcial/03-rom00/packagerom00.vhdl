library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagerom00 is

	component osc00 
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	
	component contRead00
		port(
		clkcr: in std_logic;
		encr:in std_logic;
		outcr:inout std_logic_vector(5 downto 0)
			);
	end component;
	
	component memrom00
		port(
		clkro: in std_logic;
		enro:in std_logic;
		incontro:in std_logic_vector(5 downto 0);
		outro:out std_logic_vector(6 downto 0)
			);
	end component;
end packagerom00;