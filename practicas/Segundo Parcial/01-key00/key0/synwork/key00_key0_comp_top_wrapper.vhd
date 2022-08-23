--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri May 13 11:36:23 2022
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagekey00.all;

entity wrapper_for_key00 is
   port (
      clk00 : in std_logic;
      cdiv00 : in std_logic_vector(4 downto 0);
      enr0 : in std_logic;
      inkey0 : in std_logic_vector(3 downto 0);
      outr0 : out std_logic_vector(3 downto 0);
      outrLED0 : out std_logic_vector(3 downto 0);
      outcoder0 : out std_logic_vector(6 downto 0);
      outtransist0 : out std_logic_vector(3 downto 0)
   );
end wrapper_for_key00;

architecture key0 of wrapper_for_key00 is

component key00
 port (
   clk00 : inout std_logic;
   cdiv00 : in std_logic_vector (4 downto 0);
   enr0 : in std_logic;
   inkey0 : in std_logic_vector (3 downto 0);
   outr0 : out std_logic_vector (3 downto 0);
   outrLED0 : out std_logic_vector (3 downto 0);
   outcoder0 : out std_logic_vector (6 downto 0);
   outtransist0 : out std_logic_vector (3 downto 0)
 );
end component;

signal tmp_clk00 : std_logic;
signal tmp_cdiv00 : std_logic_vector (4 downto 0);
signal tmp_enr0 : std_logic;
signal tmp_inkey0 : std_logic_vector (3 downto 0);
signal tmp_outr0 : std_logic_vector (3 downto 0);
signal tmp_outrLED0 : std_logic_vector (3 downto 0);
signal tmp_outcoder0 : std_logic_vector (6 downto 0);
signal tmp_outtransist0 : std_logic_vector (3 downto 0);

begin

tmp_clk00 <= clk00;

tmp_cdiv00 <= cdiv00;

tmp_enr0 <= enr0;

tmp_inkey0 <= inkey0;

outr0 <= tmp_outr0;

outrLED0 <= tmp_outrLED0;

outcoder0 <= tmp_outcoder0;

outtransist0 <= tmp_outtransist0;



u1:   key00 port map (
		clk00 => tmp_clk00,
		cdiv00 => tmp_cdiv00,
		enr0 => tmp_enr0,
		inkey0 => tmp_inkey0,
		outr0 => tmp_outr0,
		outrLED0 => tmp_outrLED0,
		outcoder0 => tmp_outcoder0,
		outtransist0 => tmp_outtransist0
       );
end key0;
