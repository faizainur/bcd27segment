library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_bcd_7seg is
	Port (
		bcd_in : in STD_LOGIC_VECTOR(3 downto 0);
		out_seg : out STD_LOGIC_VECTOR(6 downto 0));
end entity;

architecture decoder7seg of decoder_bcd_7seg is -- decoder BCD to 7 segment
begin
	out_seg <= "1111110" when (bcd_in = "0000") else 
					"0110000" when (bcd_in = "0001") else
					"1101101" when (bcd_in = "0010") else
					"1111001" when (bcd_in = "0011") else
					"0110011" when (bcd_in = "0100") else
					"1011011" when (bcd_in = "0101") else
					"1011111" when (bcd_in = "0110") else
					"1110000" when (bcd_in = "0111") else
					"1111111" when (bcd_in = "1000") else
					"1111011";
end decoder7seg;


