library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity coder00 is
	port(
		clkc:in std_logic;
		enc: in std_logic;
		incontc:in std_logic_vector(3 downto 0);
		inkeyc:in std_logic_vector(3 downto 0);
		outcoder:out std_logic_vector(3 downto 0);
		outpushc: out std_logic
	);
end coder00;

architecture coder0 of coder00 is
begin
	pcoder: process(clkc)
	variable var0: bit:='0';
	variable var1: bit:='0';
	variable var2: bit:='0';
	variable var3: bit:='0';
	variable var4: bit:='0';
	begin
		case enc is
		when '0' =>
			outcoder <= "0000";
			outpushc <= '0';
		when '1' =>
			if(clkc'event and clkc='1')then
				case incontc is
					when "1000" =>
						case inkeyc is
							when "0000" =>
								var0:='0';
								var1:='0';
								outpushc <= '0';
							when "0001" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var1:='1';
									outcoder<="0001";--1
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0010" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var1:='1';
									outcoder<="0010";--2
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0100" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var1:='1';
									outcoder<="0011";--3
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "1000" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var1:='1';
									outcoder<="1010";--A
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when others => null;
						end case;
					when "0100" =>
						case inkeyc is
							when "0000" =>
								var0:='0';
								var2:='0';
								outpushc <= '0';
							when "0001" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var2:='1';
									outcoder<="0100";--4
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0010" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var2:='1';
									outcoder<="0101";--5
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0100" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var2:='1';
									outcoder<="0110";--6
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "1000" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var2:='1';
									outcoder<="1011";--b
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when others => null;
						end case;
					when "0010" =>
						case inkeyc is
							when "0000" =>
								var0:='0';
								var3:='0';
								outpushc <= '0';
							when "0001" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var3:='1';
									outcoder<="0111";--7
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0010" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var3:='1';
									outcoder<="1000";--8
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0100" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var3:='1';
									outcoder<="1001";--9
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "1000" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var3:='1';
									outcoder<="1100";--C
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when others => null;
						end case;
					when "0001" =>
						case inkeyc is
							when "0000" =>
								var0:='0';
								var4:='0';
								outpushc <= '0';
							when "0001" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var4:='1';
									outcoder<="0000";--0
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0010" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var4:='1';
									outcoder<="1101";-- d
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "0100" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var4:='1';
									outcoder<="1110";-- E
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when "1000" =>
								if(var0 = '0' and var1 = '0' and var2 = '0' and var3 = '0' and var4 = '0')then
									var0:='1';
									var4:='1';
									outcoder<="1111";-- F
									outpushc <= '1';
								else
									outpushc <= '0';
								end if;
							when others => null;
						end case;
					when others => null;
				end case;
			end if;
		when others => null;
		end case;
	end process pcoder;
end coder0;