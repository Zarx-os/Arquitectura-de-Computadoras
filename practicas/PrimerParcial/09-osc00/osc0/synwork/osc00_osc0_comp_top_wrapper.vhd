--
-- Synopsys
-- Vhdl wrapper for top level design, written on Wed Mar  9 11:03:54 2022
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageosc00.all;

entity wrapper_for_osc00 is
   port (
      cdiv0 : in std_logic_vector(4 downto 0);
      clk0 : in std_logic
   );
end wrapper_for_osc00;

architecture osc0 of wrapper_for_osc00 is

component osc00
 port (
   cdiv0 : in std_logic_vector (4 downto 0);
   clk0 : inout std_logic
 );
end component;

signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_clk0 : std_logic;

begin

tmp_cdiv0 <= cdiv0;

tmp_clk0 <= clk0;



u1:   osc00 port map (
		cdiv0 => tmp_cdiv0,
		clk0 => tmp_clk0
       );
end osc0;
