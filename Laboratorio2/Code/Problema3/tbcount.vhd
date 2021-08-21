library ieee;
use ieee.std_logic_1164.all;


entity tbcount is
end tbcount;

architecture tb of tbcount is		
	 signal clk, reset: std_logic:='0';
	 Signal c2: std_logic_vector(1 downto 0):=(others => '0');--Salida del contador de 2 bits
	 Signal c4: std_logic_vector(3 downto 0):=(others => '0');--Salida del contador de 2 bits
	 Signal c6: std_logic_vector(5 downto 0):=(others => '0');--Salida del contador de 6 bits
	--Declaración de componentes

	component count is
		generic (N :POSITIVE);
		PORT (
			 clk   : IN std_logic; 
			 reset : IN std_logic; 
			 count : OUT std_logic_vector(N DOWNTO 0));
	end component count;
	
	begin 
		cou2: count
			generic map(N=>2)
			port map(clk=>clk,reset=>reset,count=>c2);
		
		cou4: count
			generic map(N=>4)
			port map(clk=>clk,reset=>reset,count=>c4);
			
		cou6: count
			generic map(N=>6)
			port map(clk=>clk,reset=>reset,count=>c6);
		
		--clk<='0','1' after 1 ns,'0' after 2 ns,'1' after 3 ns,'0' after 4 ns;
		reset<='1','0'AFTER 1 ns;
		CHECK_SETUP: process (clk, c2, reset,c4,c6)
		
		begin
			--reset<='1' after 1 ns, '1' after 2 ns;
			clk<='0' after 1 ns,'1' after 2 ns;
			--clk<='0';
			--wait for 1 ns;
			
			if c2 >"11" then
				assert false report "Error: outside the range" severity error;
			end if;
			if c4 >"1111" then
				assert false report "Error: outside the range" severity error;
			end if;
			if c6 >"111111" then
				assert false report "Error: outside the range" severity error;
			end if;
			
			--clk<='1';
			--wait for 1 ns;
			--c2<="111";
		end process CHECK_SETUP;
	 
end architecture ;