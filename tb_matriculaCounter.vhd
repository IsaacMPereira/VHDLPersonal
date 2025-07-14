library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_matriculaCounter is
end tb_matriculaCounter;

architecture Behavioral of tb_matriculaCounter is

    component top_sequence_counter
        port (
            CLK100    : in  std_logic;
            RESET_BTN : in  std_logic;
            SEG_OUT   : out std_logic_vector(6 downto 0);
            AN        : out std_logic_vector(3 downto 0)
        );
    end component;

    signal CLK100_tb   : std_logic := '0';
    signal RESET_BTN_tb : std_logic := '1'; 
    signal SEG_OUT_tb  : std_logic_vector(6 downto 0);
    signal AN_tb       : std_logic_vector(3 downto 0);

    constant CLK_PERIOD : time := 10 ns; 

begin

    uut: top_sequence_counter
        port map (
            CLK100    => CLK100_tb,
            RESET_BTN => RESET_BTN_tb,
            SEG_OUT   => SEG_OUT_tb,
            AN        => AN_tb
        );

    CLK_GEN : process
    begin
        while true loop
            CLK100_tb <= '0';
            wait for CLK_PERIOD / 2;
            CLK100_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process CLK_GEN;

    STIMULUS : process
    begin
        RESET_BTN_tb <= '1';
        wait for 100 ns; 
        RESET_BTN_tb <= '0'; 

        wait for 10 us; 

        report "Simulação de 10 segundos para observar a sequência...";
        wait for 10 sec;
        
        report "Fim da simulação." severity NOTE;
        wait; 
    end process STIMULUS;

end Behavioral;