library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity shiftRL is
	port(clks: in std_logic;
		 ens: in std_logic;
		 incs: in std_logic_vector(3 downto 0);
		 ins: in std_logic_vector(7 downto 0);
		 Sel: in std_logic_vector(3 downto 0);
		 outs: inout std_logic_vector(7 downto 0));
end shiftRL;

architecture shift of shiftRL is
signal scontrol: std_logic_vector(3 downto 0);
begin
	pshiftRL: process(clks)
	begin
		if (clks'event and clks = '1') then
		
			if (Sel = "0001") then --Dezplazamiento hacia la izquierda
		
				case ens is
				when '0' =>
					outs <= ins;
				when '1' =>
					outs(0) <= '0';
					outs(7 downto 1) <= outs(6 downto 0);
				when others => null;
				end case;
					
			elsif(Sel = "0011") then --Dezplazamiento hacia la derecha
			
				case ens is
				when '0' =>
					outs <= ins;
				when '1' =>
					outs(7) <= '0';
					outs(6 downto 0) <= outs(7 downto 1);
				when others => null;
				end case;
				
			elsif(Sel = "0010") then --Rotacion hacia la izquierda
			
				case ens is
				when '0' =>
					outs <= ins;
				when '1' =>
					outs(0) <= outs(7);
					outs(7 downto 1) <= outs(6 downto 0);
				when others => null;
				end case;
					
			elsif(Sel = "0110") then --Rotacion hacia la derecha
			
				case ens is
				when '0' =>
					outs <= ins;
				when '1' =>
					outs(7) <= outs(0);
					outs(6 downto 0) <= outs(7 downto 1);
				when others => null;
				end case;
					
			elsif(Sel = "0100") then --Dezplazamiento hacia la izquierda con barrel
			
				case ens is
				when '0' =>
					outs <= ins;
					scontrol <= "0000";
				when '1' =>
					if (scontrol < incs) then
					scontrol <= scontrol + '1';
					outs(0) <= '0';
					outs(7 downto 1) <= outs(6 downto 0);
					else
					scontrol <= scontrol;	
					end if;	
				when others => null;
				end case;
					
			elsif(Sel = "1100") then --Dezplazamiento hacia la derecha con barrel
			
				case ens is
				when '0' =>
					outs <= ins;
					scontrol <= "0000";
				when '1' =>
					if (scontrol < incs) then
					scontrol <= scontrol + '1';
					outs(7) <= '0';
					outs(6 downto 0) <= outs(7 downto 1);
					else
					scontrol <= scontrol;	
					end if;	
				when others => null;
				end case;
					
			elsif(Sel = "1000") then --Rotacion hacia la izquierda con barrel
			
				case ens is
				when '0' =>
					outs <= ins;
				scontrol <= "0000";
				when '1' =>
					if (scontrol < incs) then
					scontrol <= scontrol + '1';
					outs(0) <= outs(7);
					outs(7 downto 1) <= outs(6 downto 0);
					else
					scontrol <= scontrol;	
					end if;	
				when others => null;
				end case;
					
			elsif(Sel = "1001") then --Rotacion hacia la derecha con barrel
			
				case ens is
				when '0' =>
					outs <= ins;
				scontrol <= "0000";
				when '1' =>
					if (scontrol < incs) then
					scontrol <= scontrol + '1';
					outs(7) <= outs(0);
					outs(6 downto 0) <= outs(7 downto 1);
					else
					scontrol <= scontrol;	
					end if;	
				when others => null;
				end case;

			else
			scontrol <= scontrol;		
			end if;
			end if;
	end process pshiftRL;
end shift;