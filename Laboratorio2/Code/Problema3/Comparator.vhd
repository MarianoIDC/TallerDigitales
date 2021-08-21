LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

entity comparator is
	port(Si: in std_logic_vector(5 downto 0);--Entradas 5 Bits
			Disp: out std_logic_vector(13 downto 0));-- Salida 7 Bits. DIsplay 7 segmentos
end entity;


architecture structural of comparator is

	SIGNAL zero:std_logic_vector(6 downto 0):="0000001";
	SIGNAL one:std_logic_vector(6 downto 0):="1001111";
	SIGNAL two:std_logic_vector(6 downto 0):="0010010";
	SIGNAL three:std_logic_vector(6 downto 0):="0000110";
	SIGNAL four:std_logic_vector(6 downto 0):="1001100";
	SIGNAL five:std_logic_vector(6 downto 0):="0100100";
	SIGNAL six:std_logic_vector(6 downto 0):="0100000";
	SIGNAL seven:std_logic_vector(6 downto 0):="0001111";
	SIGNAL eight:std_logic_vector(6 downto 0):="0000000";
	SIGNAL nine:std_logic_vector(6 downto 0):="0001100";
	begin
	process(Si) 
	begin
		case Si is
			when "000000" => Disp(13 downto 0) <= zero & zero;
			when "000001" => Disp(13 downto 0) <= zero & one;
			when "000010" => Disp(13 downto 0) <= zero & two;
			when "000011" => Disp(13 downto 0) <= zero & three;
			when "000100" => Disp(13 downto 0) <= zero & four;
			when "000101" => Disp(13 downto 0) <= zero & five;
			when "000110" => Disp(13 downto 0) <= zero & six;
			when "000111" => Disp(13 downto 0) <= zero & seven;
			when "001000" => Disp(13 downto 0) <= zero & eight;
			when "001001" => Disp(13 downto 0) <= zero & nine;
			when "001010" => Disp(13 downto 0) <= one & zero;
			when "001011" => Disp(13 downto 0) <= one & one;
			when "001100" => Disp(13 downto 0) <= one & two;
			when "001101" => Disp(13 downto 0) <= one & three;
			when "001110" => Disp(13 downto 0) <= one & four;
			when "001111" => Disp(13 downto 0) <= one & five;
			when "010000" => Disp(13 downto 0) <= one & six;
			when "010001" => Disp(13 downto 0) <= one & seven;
			when "010010" => Disp(13 downto 0) <= one & eight;
			when "010011" => Disp(13 downto 0) <= one & nine;
			when "010100" => Disp(13 downto 0) <= two & zero;
			when "010101" => Disp(13 downto 0) <= two & one;
			when "010110" => Disp(13 downto 0) <= two & two;
			when "010111" => Disp(13 downto 0) <= two & three;
			when "011000" => Disp(13 downto 0) <= two & four;
			when "011001" => Disp(13 downto 0) <= two & five;
			when "011010" => Disp(13 downto 0) <= two & six;
			when "011011" => Disp(13 downto 0) <= two & seven;
			when "011100" => Disp(13 downto 0) <= two & eight;
			when "011101" => Disp(13 downto 0) <= two & nine;
			when "011110" => Disp(13 downto 0) <= three & zero;
			when "011111" => Disp(13 downto 0) <= three & one;
			when "100000" => Disp(13 downto 0) <= three & two;
			when "100001" => Disp(13 downto 0) <= three & three;
			when "100010" => Disp(13 downto 0) <= three & four;
			when "100011" => Disp(13 downto 0) <= three & five;
			when "100100" => Disp(13 downto 0) <= three & six;
			when "100101" => Disp(13 downto 0) <= three & seven;
			when "100110" => Disp(13 downto 0) <= three & eight;
			when "100111" => Disp(13 downto 0) <= three & nine;
			when "101000" => Disp(13 downto 0) <= four & zero;
			when "101001" => Disp(13 downto 0) <= four & one;
			when "101010" => Disp(13 downto 0) <= four & two;
			when "101011" => Disp(13 downto 0) <= four & three;
			when "101100" => Disp(13 downto 0) <= four & four;
			when "101101" => Disp(13 downto 0) <= four & five;
			when "101110" => Disp(13 downto 0) <= four & six;
			when "101111" => Disp(13 downto 0) <= four & seven;
			when "110000" => Disp(13 downto 0) <= four & eight;
			when "110001" => Disp(13 downto 0) <= four & nine;
			when "110010" => Disp(13 downto 0) <= five & zero;
			when "110011" => Disp(13 downto 0) <= five & one;
			when "110100" => Disp(13 downto 0) <= five & two;
			when "110101" => Disp(13 downto 0) <= five & three;
			when "110110" => Disp(13 downto 0) <= five & four;
			when "110111" => Disp(13 downto 0) <= five & five;
			when "111000" => Disp(13 downto 0) <= five & six;
			when "111001" => Disp(13 downto 0) <= five & seven;
			when "111010" => Disp(13 downto 0) <= five & eight;
			when "111011" => Disp(13 downto 0) <= five & nine;
			when "111100" => Disp(13 downto 0) <= six & zero;
			when "111101" => Disp(13 downto 0) <= six & one;
			when "111110" => Disp(13 downto 0) <= six & two;

			when others => Disp(13 downto 0) <= zero & zero;

		end case;
	end process;
end architecture;