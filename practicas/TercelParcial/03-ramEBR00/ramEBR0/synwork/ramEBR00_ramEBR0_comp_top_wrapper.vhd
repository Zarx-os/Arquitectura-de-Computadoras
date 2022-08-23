--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu May 26 16:35:45 2022
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageramebr00.all;

entity wrapper_for_ramEBR00 is
   port (
      clk0 : in std_logic;
      cdiv0 : in std_logic_vector(4 downto 0);
      re0 : in std_logic;
      en0 : in std_logic;
      rw0 : in std_logic;
      inData0 : in std_logic_vector(7 downto 0);
      outcont0 : in std_logic_vector(5 downto 0);
      Q0 : out std_logic_vector(7 downto 0)
   );
end wrapper_for_ramEBR00;

architecture ramebr0 of wrapper_for_ramEBR00 is

component ramEBR00
 port (
   clk0 : inout std_logic;
   cdiv0 : in std_logic_vector (4 downto 0);
   re0 : in std_logic;
   en0 : in std_logic;
   rw0 : in std_logic;
   inData0 : in std_logic_vector (7 downto 0);
   outcont0 : inout std_logic_vector (5 downto 0);
   Q0 : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_clk0 : std_logic;
signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_re0 : std_logic;
signal tmp_en0 : std_logic;
signal tmp_rw0 : std_logic;
signal tmp_inData0 : std_logic_vector (7 downto 0);
signal tmp_outcont0 : std_logic_vector (5 downto 0);
signal tmp_Q0 : std_logic_vector (7 downto 0);

begin

tmp_clk0 <= clk0;

tmp_cdiv0 <= cdiv0;

tmp_re0 <= re0;

tmp_en0 <= en0;

tmp_rw0 <= rw0;

tmp_inData0 <= inData0;

tmp_outcont0 <= outcont0;

Q0 <= tmp_Q0;



u1:   ramEBR00 port map (
		clk0 => tmp_clk0,
		cdiv0 => tmp_cdiv0,
		re0 => tmp_re0,
		en0 => tmp_en0,
		rw0 => tmp_rw0,
		inData0 => tmp_inData0,
		outcont0 => tmp_outcont0,
		Q0 => tmp_Q0
       );
end ramebr0;
