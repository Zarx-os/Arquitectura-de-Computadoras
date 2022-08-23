library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageramEBR00 is

	component osc00
	
		port(
		 oscout0: inout std_logic;
		 cdiv: in std_logic_vector(4 downto 0)
		 );
	
	end component;
	
	component contRead00
		
		port(clkcr: in std_logic;
		 recr,encr, rwcr: in std_logic;
		 outcontcr: inout std_logic_vector(5 downto 0));
	
	end component;
	
	component ram_EBR_00
		
		port(Clock: in std_logic;			
		ClockEn: in std_logic;
		Reset: in std_logic;
		WE:in std_logic;
		Address: in std_logic_vector(5 downto 0);
		Data: in std_logic_vector(7 downto 0);
		Q: out std_logic_vector (7 downto 0)
		);
	end component;
end packageramEBR00;