LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY cronometro IS
    PORT(
        clk : IN STD_LOGIC;  -- Clock da FPGA (50 MHz)
        rst : IN STD_LOGIC;  -- Botão de reset
        start_stop : IN STD_LOGIC;  -- Botão de iniciar/parar
        seg_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)  -- Saída para exibição (exemplo)
    );
END cronometro;

ARCHITECTURE behavior OF cronometro IS
    SIGNAL count : INTEGER RANGE 0 TO 50_000_000 := 0;  -- Contador do clock
    SIGNAL segundos : INTEGER RANGE 0 TO 9 := 0;  -- Contador de segundos (0 a 9 como exemplo)
    SIGNAL running : STD_LOGIC := '0';  -- Estado de execução

BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF rst = '1' THEN
                count <= 0;
                segundos <= 0;
                running <= '0';
            ELSIF start_stop = '1' THEN
                running <= NOT running;  -- Alterna entre rodando e pausado
            END IF;

            -- Se estiver rodando, conta os segundos
            IF running = '1' THEN
                IF count = 49_999_999 THEN  -- 50M ciclos = 1s
                    count <= 0;
                    IF segundos = 9 THEN
                        segundos <= 0;  -- Reinicia após 9 segundos
                    ELSE
                        segundos <= segundos + 1;
                    END IF;
                ELSE
                    count <= count + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Saída para um display ou LED (exemplo simples)
    seg_out <= STD_LOGIC_VECTOR(to_unsigned(segundos, 4));
END behavior;

