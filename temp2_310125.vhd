LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY cronometro IS
    PORT (
        clk       : IN STD_LOGIC;  -- Clock da FPGA (50MHz)
        reset     : IN STD_LOGIC;  -- Botão de reset
        seg_display  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);  -- Saída do display para segundos
        min_display  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   -- Saída do display para minutos
    );
END cronometro;

ARCHITECTURE behavior OF cronometro IS

    SIGNAL clk_1hz     : STD_LOGIC := '0';  -- Clock reduzido para 1Hz
    SIGNAL seg         : INTEGER RANGE 0 TO 59 := 0;  -- Contador de segundos (0 a 59)
    SIGNAL min         : INTEGER RANGE 0 TO 9 := 0;   -- Contador de minutos (0 a 9)
    SIGNAL clk_count   : INTEGER RANGE 0 TO 49999999 := 0; -- Para reduzir 50MHz para 1Hz

BEGIN

    -- Process para dividir o clock de 50MHz para 1Hz
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF clk_count = 49999999 THEN
                clk_count <= 0;
                clk_1hz <= NOT clk_1hz;  -- Alterna o clock a cada 1s
            ELSE
                clk_count <= clk_count + 1;
            END IF;
        END IF;
    END PROCESS;

    -- Contador de segundos e minutos
    PROCESS (clk_1hz, reset)
    BEGIN
        IF reset = '1' THEN
            seg <= 0;
            min <= 0;
        ELSIF rising_edge(clk_1hz) THEN
            IF seg = 59 THEN
                seg <= 0;
                IF min < 9 THEN
                    min <= min + 1;
                END IF;
            ELSE
                seg <= seg + 1;
            END IF;
        END IF;
    END PROCESS;

    -- Decodificador para display de 7 segmentos
    PROCESS (seg)
    BEGIN
        CASE seg MOD 10 IS
            WHEN 0  => seg_display <= "1000000"; -- 0
            WHEN 1  => seg_display <= "1111001"; -- 1
            WHEN 2  => seg_display <= "0100100"; -- 2
            WHEN 3  => seg_display <= "0110000"; -- 3
            WHEN 4  => seg_display <= "0011001"; -- 4
            WHEN 5  => seg_display <= "0010010"; -- 5
            WHEN 6  => seg_display <= "0000010"; -- 6
            WHEN 7  => seg_display <= "1111000"; -- 7
            WHEN 8  => seg_display <= "0000000"; -- 8
            WHEN 9  => seg_display <= "0010000"; -- 9
            WHEN OTHERS => seg_display <= "1111111"; -- Apagado
        END CASE;
    END PROCESS;

    PROCESS (min)
    BEGIN
        CASE min IS
            WHEN 0  => min_display <= "1000000"; -- 0
            WHEN 1  => min_display <= "1111001"; -- 1
            WHEN 2  => min_display <= "0100100"; -- 2
            WHEN 3  => min_display <= "0110000"; -- 3
            WHEN 4  => min_display <= "0011001"; -- 4
            WHEN 5  => min_display <= "0010010"; -- 5
            WHEN 6  => min_display <= "0000010"; -- 6
            WHEN 7  => min_display <= "1111000"; -- 7
            WHEN 8  => min_display <= "0000000"; -- 8
            WHEN 9  => min_display <= "0010000"; -- 9
            WHEN OTHERS => min_display <= "1111111"; -- Apagado
        END CASE;
    END PROCESS;

END behavior;

