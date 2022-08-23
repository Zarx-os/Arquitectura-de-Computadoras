library ieee;
library lattice;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use lattice.all;

entity adder4bit00 is
port(
		Ad:in std_logic_vector(3 downto 0);
		Bd:in std_logic_vector(3 downto 0);
		Yd:out std_logic_vector(3 downto 0);
		Sel:in std_logic);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is
begin
	
	with Sel select
	Yd<= Ad+Bd when '0',
		 Ad-Bd when '1',
		"0000" when others;
	
end adder4bit0;