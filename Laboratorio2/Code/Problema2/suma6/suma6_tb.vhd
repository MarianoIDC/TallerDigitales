library IEEE;
use IEEE.std_logic_1164.all;

entity suma6_tb is
end entity;

architecture arch of suma6_tb is

    component suma6 is
        port (
            --sum : out std_logic_vector (4 downto 0);
            --m_c_out : out std_logic;
            n_a : in std_logic_vector (4 downto 0);
            n_b : in std_logic_vector (4 downto 0);
            --m_c_in : in std_logic;
				
				
				sg5 : out std_logic_vector (6 downto 0);
				sg4 : out std_logic_vector (6 downto 0);
				sg3 : out std_logic_vector (6 downto 0);
				sg2 : out std_logic_vector (6 downto 0);
				sg1 : out std_logic_vector (6 downto 0);
				sg0 : out std_logic_vector (6 downto 0)
        );
    end component;

    signal test_a, test_b : std_logic_vector (4 downto 0);
    --signal test_c_in, test_c_out : std_logic;
	 signal t_sg5, t_sg4, t_sg3, t_sg2, t_sg1, t_sg0 : std_logic_vector (6 downto 0);

begin

    unit_under_test : suma6 port map (
        --sum => test_sum,
        --m_c_out => test_c_out,

        n_a => test_a,
        n_b => test_b,
        --m_c_in => test_c_in, 
		  sg5 => t_sg5,
		  sg4 => t_sg4,
		  sg3 => t_sg3,
		  sg2 => t_sg2,
		  sg1 => t_sg1,
		  sg0 => t_sg0
    );

    generate_signals : process
    begin
        test_a <= "00000"; test_b <= "00001"; wait for 10 ns;
        test_a <= "00010"; test_b <= "00001"; wait for 10 ns;
        test_a <= "01000"; test_b <= "00001"; wait for 10 ns;
        test_a <= "01001"; test_b <= "00001"; wait for 10 ns;
        test_a <= "10100"; test_b <= "00001"; wait for 10 ns;
        test_a <= "11100"; test_b <= "00001"; wait for 10 ns;
        test_a <= "11111"; test_b <= "10001"; wait for 10 ns;
        
        wait;
    end process;

end architecture;