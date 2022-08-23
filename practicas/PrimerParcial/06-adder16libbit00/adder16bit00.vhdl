library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library lattice;
use lattice.all;
entity adder16bit00 is
port(
	Ai:in std_logic_vector(7 downto 0);
	Bi:in std_logic_vector(7 downto 0);
	So:out std_logic_vector(7 downto 0);
	Sl:in std_logic
);
end adder16bit00;

architecture adder16bit0 of adder16bit00 is
begin

	with Sl select 
	So<=Ai + Bi when '0',
		Ai - Bi when '1',
		"00000000" when others;
end adder16bit0;