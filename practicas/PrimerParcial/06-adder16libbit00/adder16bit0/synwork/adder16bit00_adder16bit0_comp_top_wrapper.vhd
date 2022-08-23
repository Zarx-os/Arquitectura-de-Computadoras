--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri Mar 25 19:14:55 2022
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity wrapper_for_adder16bit00 is
   port (
      Ai : in std_logic_vector(7 downto 0);
      Bi : in std_logic_vector(7 downto 0);
      So : out std_logic_vector(7 downto 0);
      Sl : in std_logic
   );
end wrapper_for_adder16bit00;

architecture adder16bit0 of wrapper_for_adder16bit00 is

component adder16bit00
 port (
   Ai : in std_logic_vector (7 downto 0);
   Bi : in std_logic_vector (7 downto 0);
   So : out std_logic_vector (7 downto 0);
   Sl : in std_logic
 );
end component;

signal tmp_Ai : std_logic_vector (7 downto 0);
signal tmp_Bi : std_logic_vector (7 downto 0);
signal tmp_So : std_logic_vector (7 downto 0);
signal tmp_Sl : std_logic;

begin

tmp_Ai <= Ai;

tmp_Bi <= Bi;

So <= tmp_So;

tmp_Sl <= Sl;



u1:   adder16bit00 port map (
		Ai => tmp_Ai,
		Bi => tmp_Bi,
		So => tmp_So,
		Sl => tmp_Sl
       );
end adder16bit0;
