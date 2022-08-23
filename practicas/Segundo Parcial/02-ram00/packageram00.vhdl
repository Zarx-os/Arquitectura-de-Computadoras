library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageram00 is
	
	component osc00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	component contring00
		port(
		clkr: in std_logic;
		resetr,rwr: in std_logic;
		outr:inout std_logic_vector(3 downto 0)
		);
	end component;
	component coder00
		port(
		clkc:in std_logic;
		incontc: in std_logic_vector(3 downto 0);
		resetc,rwc: in std_logic;
		inkeyc: in std_logic_vector(3 downto 0);
		outcontwritec:inout std_logic_vector(5 downto 0); 
		outcoderc: out std_logic_vector(6 downto 0)
		);
	end component;
	component memram00
		port(
		  clkra: in std_logic;
		  resetra, rwra: in std_logic;
		  incontWra: in std_logic_vector(5 downto 0);
		  incontRra: in std_logic_vector(5 downto 0);
		  inwordra: in std_logic_vector(6 downto 0);
		  outwordra: out std_logic_vector(6 downto 0)
		);
	end component;
	component contRead00
		port(
		 clkrd: in std_logic;
		resetrd,rwrd: in std_logic;
		incontcoderrd: in std_logic_vector(5 downto 0);
		outcontrd: inout std_logic_vector(5 downto 0)
		);
	end component;
	component muxram00
		port(
		  resetmux, rwmux: in std_logic;
		  inwordcodermux: in std_logic_vector(6 downto 0);
		  inwordRammux: in std_logic_vector(6 downto 0);
		  outwordmux: out std_logic_vector(6 downto 0)
		);
	end component;
end packageram00;