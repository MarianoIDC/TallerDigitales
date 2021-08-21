LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;
-- Top LEVEL
 
entity topLevel is
	port(clock, reset: in std_logic;--Entradas 2 bits clock y reset
			Display: out std_logic_vector(13 downto 0));-- Salida 14 Bits, 2 Displays de 7 segmentos
end entity;


architecture structural of topLevel is
	Signal So: std_logic_vector(5 downto 0);--Salida del sumador
	--Declaración de componentes
	component count is
		GENERIC (N: POSITIVE);
		PORT (
			 clk   : IN std_logic; 
			 reset : IN std_logic; 
			 count : OUT std_logic_vector(N DOWNTO 0));
	end component count;
	
	component comparator is
		port(Si: in std_logic_vector(5 downto 0);--Entradas 5 Bits
			Disp: out std_logic_vector(13 downto 0));
	end component comparator;
	
	begin
		cou: count
			generic map(N=>6)
			port map(clk=>clock,reset=>reset,count=>So);
		comp: comparator
			port map(Si=>So,Disp=>Display);
		
		
	
	
end structural;