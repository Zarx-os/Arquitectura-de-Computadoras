library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageadder8bit00 is
	component adder4bit00
		port(
			Ai:in std_logic_vector(3 downto 0);
			Bi:in std_logic_vector(3 downto 0);
			So:out std_logic_vector(3 downto 0);
			SL:in std_logic;
			LED:out std_logic
			);
	end component;
	
end packagefa00;

