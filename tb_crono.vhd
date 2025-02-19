library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_crono is
end tb_crono;

architecture Behavioral of tb_crono is
    constant CLK_PERIOD : time := 20 ns; -- Clock de 50MHz

    signal clk           : STD_LOGIC := '0';
    signal rst           : STD_LOGIC := '0';
    signal display       : STD_LOGIC_VECTOR(6 downto 0);
    signal anode         : STD_LOGIC_VECTOR(2 downto 0);
    signal btn_debounced : STD_LOGIC := '1';

begin
    -- Instância do DUT (Device Under Test)
    uut: entity work.crono
        port map (
            clk           => clk,
            rst           => rst,
            display       => display,
            anode         => anode,
            btn_debounced => btn_debounced
        );

    -- Geração do clock
    process
    begin
        while now < 500 ms loop -- Simulação por 500ms
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Sequência de testes
    process
    begin
        -- Aplicar reset
        rst <= '1';
        wait for 50 ns;
        rst <= '0';
        wait for 100 ns;

        -- Simular botão pressionado para iniciar
        btn_debounced <= '0';
        wait for 50 ns;
        btn_debounced <= '1';
        
        -- Esperar alguns ciclos de clock
        wait for 200 ms;

        -- Simular botão pressionado para pausar
        btn_debounced <= '0';
        wait for 50 ns;
        btn_debounced <= '1';
        
        -- Esperar mais alguns ciclos
        wait for 100 ms;

        -- Finaliza simulação
        wait;
    end process;

end Behavioral;
