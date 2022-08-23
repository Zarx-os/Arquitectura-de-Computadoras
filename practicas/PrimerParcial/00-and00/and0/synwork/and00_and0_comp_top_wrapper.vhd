--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Feb 17 15:49:48 2022
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_and00 is
   port (
      Aa : in std_logic_vector(7 downto 0);
      Ba : in std_logic_vector(7 downto 0);
      Ya : out std_logic_vector(7 downto 0);
      Za : out std_logic_vector(7 downto 0);
      Va : out std_logic_vector(7 downto 0)
   );
end wrapper_for_and00;

architecture and0 of wrapper_for_and00 is

component and00
 port (
   Aa : in std_logic_vector (7 downto 0);
   Ba : in std_logic_vector (7 downto 0);
   Ya : out std_logic_vector (7 downto 0);
   Za : out std_logic_vector (7 downto 0);
   Va : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_Aa : std_logic_vector (7 downto 0);
signal tmp_Ba : std_logic_vector (7 downto 0);
signal tmp_Ya : std_logic_vector (7 downto 0);
signal tmp_Za : std_logic_vector (7 downto 0);
signal tmp_Va : std_logic_vector (7 downto 0);

begin

tmp_Aa <= Aa;

tmp_Ba <= Ba;

Ya <= tmp_Ya;

Za <= tmp_Za;

Va <= tmp_Va;



u1:   and00 port map (
		Aa => tmp_Aa,
		Ba => tmp_Ba,
		Ya => tmp_Ya,
		Za => tmp_Za,
		Va => tmp_Va
       );
end and0;
