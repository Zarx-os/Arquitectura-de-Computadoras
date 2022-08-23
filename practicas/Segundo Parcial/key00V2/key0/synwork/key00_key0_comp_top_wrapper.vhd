--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Apr 14 22:38:08 2022
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagekey00.all;

entity wrapper_for_topkey00 is
   port (
      clk0 : in std_logic;
      cdiv0 : in std_logic_vector(4 downto 0);
      en0 : in std_logic;
      inkey0 : in std_logic_vector(3 downto 0);
      outr0 : out std_logic_vector(3 downto 0);
      outrled0 : out std_logic_vector(3 downto 0);
      outcoder0 : out std_logic_vector(6 downto 0);
      outtransist0 : out std_logic_vector(3 downto 0)
   );
end wrapper_for_topkey00;

architecture topkey0 of wrapper_for_topkey00 is

component topkey00
 port (
   clk0 : inout std_logic;
   cdiv0 : in std_logic_vector (4 downto 0);
   en0 : in std_logic;
   inkey0 : in std_logic_vector (3 downto 0);
   outr0 : out std_logic_vector (3 downto 0);
   outrled0 : out std_logic_vector (3 downto 0);
   outcoder0 : out std_logic_vector (6 downto 0);
   outtransist0 : out std_logic_vector (3 downto 0)
 );
end component;

signal tmp_clk0 : std_logic;
signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_en0 : std_logic;
signal tmp_inkey0 : std_logic_vector (3 downto 0);
signal tmp_outr0 : std_logic_vector (3 downto 0);
signal tmp_outrled0 : std_logic_vector (3 downto 0);
signal tmp_outcoder0 : std_logic_vector (6 downto 0);
signal tmp_outtransist0 : std_logic_vector (3 downto 0);

begin

tmp_clk0 <= clk0;

tmp_cdiv0 <= cdiv0;

tmp_en0 <= en0;

tmp_inkey0 <= inkey0;

outr0 <= tmp_outr0;

outrled0 <= tmp_outrled0;

outcoder0 <= tmp_outcoder0;

outtransist0 <= tmp_outtransist0;



u1:   topkey00 port map (
		clk0 => tmp_clk0,
		cdiv0 => tmp_cdiv0,
		en0 => tmp_en0,
		inkey0 => tmp_inkey0,
		outr0 => tmp_outr0,
		outrled0 => tmp_outrled0,
		outcoder0 => tmp_outcoder0,
		outtransist0 => tmp_outtransist0
       );
end topkey0;
