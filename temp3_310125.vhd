LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cronometro IS
    PORT (
        clk         : IN STD_LOGIC;  -- Clock da FPGA (50MHz)
        reset       : IN STD_LOGIC;  -- Botão de reset
        seg_display : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);  -- 4 displays de 7 segmentos para os segundos
        min_display : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)   -- 4 displays de 7 segmentos para os minutos
    );
END cronometro;

ARCHITECTURE behavior OF cronometro IS

    SIGNAL clk_1hz     : STD_LOGIC := '0';  -- Clock reduzido para 1Hz
    SIGNAL seg         : INTEGER RANGE 0 TO 59 := 0;  -- Contador de segundos (0 a 59)
    SIGNAL min         : INTEGER RANGE 0 TO 9 := 0;   -- Contador de minutos (0 a 9)
    SIGNAL clk_count   : INTEGER RANGE 0 TO 49999999 := 0; -- Para reduzir 50MHz para 1Hz

    FUNCTION decode_digit (digit : INTEGER) RETURN STD_LOGIC_VECTOR IS
    BEGIN
        CASE digit IS
            WHEN 0  => RETURN "1000000"; -- 0
            WHEN 1  => RETURN "1111001"; -- 1
            WHEN 2  => RETURN "0100100"; -- 2
            WHEN 3  => RETURN "0110000"; -- 3
            WHEN 4  => RETURN "0011001"; -- 4
            WHEN 5  => RETURN "0010010"; -- 5
            WHEN 6  => RETURN "0000010"; -- 6
            WHEN 7  => RETURN "1111000"; -- 7
            WHEN 8  => RETURN "0000000"; -- 8
            WHEN 9  => RETURN "0010000"; -- 9
            WHEN OTHERS => RETURN "1111111"; -- Apagado
        END CASE;
    END decode_digit;

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
            clk_count <= 0;  -- Reinicia o contador de 50MHz
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

    -- Atualiza os displays
    PROCESS (seg, min)
    BEGIN
        -- Para os segundos (unidade e dezena)
        seg_display(6 DOWNTO 0)   <= decode_digit(seg MOD 10);  -- Unidade dos segundos
        seg_display(13 DOWNTO 7)  <= decode_digit(seg / 10);   -- Dezena dos segundos
        
        -- Para os minutos (unidade e dezena)
        min_display(6 DOWNTO 0)   <= decode_digit(min MOD 10);  -- Unidade dos minutos
        min_display(13 DOWNTO 7)  <= decode_digit(min / 10);   -- Dezena dos minutos
    END PROCESS;

END behavior;

