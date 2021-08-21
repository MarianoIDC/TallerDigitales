  LIBRARY IEEE;
  USE IEEE.STD_LOGIC_1164.all;
  USE IEEE.NUMERIC_STD.all;

  ENTITY count IS
	 GENERIC (N:POSITIVE:=6);
	 PORT (--N : IN POSITIVE;
			clk   : IN std_logic; 
			 reset : IN std_logic; 
			 count : OUT std_logic_vector(N-1 DOWNTO 0):=(others => '0')
	 );
  END count;

  ARCHITECTURE arch1 OF count IS
	 --SIGNAL len: POSITIVE:=N;
	 SIGNAL cnt : UNSIGNED(N-1 DOWNTO 0);

  BEGIN

	 pSeq : PROCESS (clk, reset) IS
	 BEGIN
		IF reset = '1' THEN
		  cnt <= (others => '0');
		ELSIF clk'event AND clk='1' THEN
			cnt <= cnt + 1;
		END IF;
	 END PROCESS;

	 count <= std_logic_vector(cnt);
	 
  END arch1;