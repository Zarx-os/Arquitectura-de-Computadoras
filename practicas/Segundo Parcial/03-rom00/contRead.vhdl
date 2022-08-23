library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is
	port(
		clkcr: in std_logic;
		encr:in std_logic;
		outcr:inout std_logic_vector(5 downto 0)
			);
end contRead00;


architecture contRead0 of contRead00 is
begin

	pcont:process(clkcr) 
	begin 
		if(clkcr'event and clkcr='1')then
			case encr is
				when '0'=>
					outcr<="000000";
				when '1'=>
					if(outcr<="001111")then
							outcr<=outcr+'1';
					end if;
				when others=>null;
			end case;
		end if;
	end process pcont;
end contRead0;