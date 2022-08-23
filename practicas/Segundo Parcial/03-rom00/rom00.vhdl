library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagerom00.all;

entity rom00 is
	port(
		clk0:inout std_logic;
		cdiv0:in std_logic_vector(4 downto 0);
		en0:in std_logic;
		outcr0:inout std_logic_vector(5 downto 0);
		outro0: inout std_logic_vector(6 downto 0);
		outtransist0: out std_logic_vector(3 downto 0)
		);
end rom00;

architecture rom0 of rom00 is
begin
outtransist0<="0001";
	RO00:osc00 port map(
						clk0=>clk0,
						cdiv0=>cdiv0
						);
	RO01:contRead00 port map(
							clkcr=>clk0,
							encr=>en0,
							outcr=>outcr0
							);
	RO02:memrom00 port map(clkro=>clk0,
							enro=>en0,
							incontro=>outcr0,
							outro=>outro0
							);
	
end rom0;