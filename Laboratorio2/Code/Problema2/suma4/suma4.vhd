library IEEE;
use IEEE.std_logic_1164.all;

entity suma4 is
    port (

        n_a : in std_logic_vector (3 downto 0);
        n_b : in std_logic_vector (3 downto 0);
		  
		  sg4 : out std_logic_vector (6 downto 0);
		  sg3 : out std_logic_vector (6 downto 0);
		  sg2 : out std_logic_vector (6 downto 0);
		  sg1 : out std_logic_vector (6 downto 0);
		  sg0 : out std_logic_vector (6 downto 0)
    );
end entity;

architecture arch_suma4 of suma4 is

    component suma1 is
        port (
            c, c_out : out std_logic;
            a, b, c_in : in std_logic;
				seg : out std_logic_vector (6 downto 0)
        );
    end component;
	 component seg7 is
	 port (
            entry : in std_logic;
				segx : out std_logic_vector (6 downto 0)
        );
	 end component;
    signal sum : std_logic_vector (4 downto 0);
	 
	 signal aux_c : std_logic_vector (4 downto 0);
	 --signal cOut_aux : std_logic;
	
begin

    --aux_c(0) <= m_c_in;
	 aux_c(0) <= '0';

    bit_0: suma1 port map (
        c => sum(0),
        c_out => aux_c(1),
        a => n_a(0),
        b => n_b(0),
        c_in => aux_c(0),
		  seg => sg0   
    );

    bit_1: suma1 port map (
        c => sum(1),
        c_out => aux_c(2),
        a => n_a(1),
        b => n_b(1),
        c_in => aux_c(1),
		  seg => sg1
    );

    bit_2: suma1 port map (
        c => sum(2),
        c_out => aux_c(3),
        a => n_a(2),
        b => n_b(2),
        c_in => aux_c(2),
		  seg => sg2
    );
	bit_3: suma1 port map (
		  c => sum(3),
		  c_out => aux_c(4),
		  a => n_a(3),
		  b => n_b(3),
		  c_in => aux_c(3),
		  seg => sg3
	 );
	bit_4: seg7 port map (
        entry => aux_c(4),
		  segx => sg4
    );

end architecture;