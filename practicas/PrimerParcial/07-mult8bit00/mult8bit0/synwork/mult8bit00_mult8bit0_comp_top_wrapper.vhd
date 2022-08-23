--
-- Synopsys
-- Vhdl wrapper for top level design, written on Tue Mar  1 22:10:08 2022
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagemult8bit00.all;

entity wrapper_for_mult8bit00 is
   port (
      Ai : in std_logic_vector(7 downto 0);
      Bi : in std_logic_vector(7 downto 0);
      R : out std_logic_vector(15 downto 0)
   );
end wrapper_for_mult8bit00;

architecture mult8bit0 of wrapper_for_mult8bit00 is

component mult8bit00
 port (
   Ai : in std_logic_vector (7 downto 0);
   Bi : in std_logic_vector (7 downto 0);
   R : out std_logic_vector (15 downto 0)
 );
end component;

signal tmp_Ai : std_logic_vector (7 downto 0);
signal tmp_Bi : std_logic_vector (7 downto 0);
signal tmp_R : std_logic_vector (15 downto 0);

begin

tmp_Ai <= Ai;

tmp_Bi <= Bi;

R <= tmp_R;



u1:   mult8bit00 port map (
		Ai => tmp_Ai,
		Bi => tmp_Bi,
		R => tmp_R
       );
end mult8bit0;
