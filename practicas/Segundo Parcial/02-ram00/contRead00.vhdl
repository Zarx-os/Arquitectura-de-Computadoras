library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is
	port(
		 clkrd: in std_logic;
		resetrd,rwrd: in std_logic;
		incontcoderrd: in std_logic_vector(5 downto 0);
		outcontrd: inout std_logic_vector(5 downto 0)
		);
end contRead00;

architecture contRead0 of contRead00 is 
signal scontrolrd:std_logic_vector(1 downto 0);
begin
scontrolrd<=(resetrd)&(rwrd);
	pcontrd:process(clkrd)
	begin
		if(clkrd'event and clkrd='1')then
			case scontrolrd is
				when "00"=>
					outcontrd<="000000";
				when "01"=>
					outcontrd<="000000";
				when "10"=>
					outcontrd<="000000";
				when "11"=>
					if(outcontrd < incontcoderrd)then
						outcontrd<=outcontrd+'1';
					end if;
				when others=>null;
			end case;
		end if;
	end process pcontrd;
end contRead0;