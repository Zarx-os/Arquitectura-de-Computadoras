--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Feb 28 18:48:12 2022
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_adder4bit00 is
   port (
      Ad : in std_logic_vector(3 downto 0);
      Bd : in std_logic_vector(3 downto 0);
      Yd : out std_logic_vector(3 downto 0);
      Sel : in std_logic
   );
end wrapper_for_adder4bit00;

architecture adder4bit0 of wrapper_for_adder4bit00 is

component adder4bit00
 port (
   Ad : in std_logic_vector (3 downto 0);
   Bd : in std_logic_vector (3 downto 0);
   Yd : out std_logic_vector (3 downto 0);
   Sel : in std_logic
 );
end component;

signal tmp_Ad : std_logic_vector (3 downto 0);
signal tmp_Bd : std_logic_vector (3 downto 0);
signal tmp_Yd : std_logic_vector (3 downto 0);
signal tmp_Sel : std_logic;

begin

tmp_Ad <= Ad;

tmp_Bd <= Bd;

Yd <= tmp_Yd;

tmp_Sel <= Sel;



u1:   adder4bit00 port map (
		Ad => tmp_Ad,
		Bd => tmp_Bd,
		Yd => tmp_Yd,
		Sel => tmp_Sel
       );
end adder4bit0;
