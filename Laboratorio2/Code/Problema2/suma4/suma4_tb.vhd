library IEEE;
use IEEE.std_logic_1164.all;

entity suma4_tb is
end entity;

architecture arch of suma4_tb is

    component suma4 is
        port (
            
            n_a : in std_logic_vector (3 downto 0);
            n_b : in std_logic_vector (3 downto 0);

				sg4 : out std_logic_vector (6 downto 0);
				sg3 : out std_logic_vector (6 downto 0);
				sg2 : out std_logic_vector (6 downto 0);
				sg1 : out std_logic_vector (6 downto 0);
				sg0 : out std_logic_vector (6 downto 0)
        );
    end component;

    signal test_a, test_b : std_logic_vector (3 downto 0);
    
	 signal t_sg4, t_sg3, t_sg2, t_sg1, t_sg0 : std_logic_vector (6 downto 0);

begin

    unit_under_test : suma4 port map (
        
        n_a => test_a,
        n_b => test_b,
     
		  sg4 => t_sg4,
		  sg3 => t_sg3,
		  sg2 => t_sg2,
		  sg1 => t_sg1,
		  sg0 => t_sg0
    );

    generate_signals : process
    begin
        test_a <= "0000"; test_b <= "0001"; wait for 10 ns;
        test_a <= "0010"; test_b <= "0001"; wait for 10 ns;
        test_a <= "1000"; test_b <= "0001"; wait for 10 ns;
        test_a <= "1001"; test_b <= "0001"; wait for 10 ns;
        test_a <= "0100"; test_b <= "0001"; wait for 10 ns;
        test_a <= "1100"; test_b <= "0001"; wait for 10 ns;
        test_a <= "1111"; test_b <= "0001"; wait for 10 ns;
        
        wait;
    end process;

end architecture;