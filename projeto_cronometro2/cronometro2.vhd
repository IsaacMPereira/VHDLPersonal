LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cronometro2 IS
	PORT(
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		start_stop : IN STD_LOGIC; 
		display_min : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		display_seg : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END cronometro2;

ARCHITECTURE behavior OF cronometro2 IS
	SIGNAL clk_1hz : STD_LOGIC := '0';
	SIGNAL clk_display : STD_LOGIC := '0';
	SIGNAL min : INTEGER RANGE 0 TO 9 := 0;
	SIGNAL seg : INTEGER RANGE 0 TO 59 := 0;
	SIGNAL paused : STD_LOGIC := '0';
	SIGNAL last_pause_btn : STD_LOGIC := '0';
	SIGNAL clk_count : INTEGER RANGE 0 TO 49999999 := 0;
	SIGNAL clk_disp_count : INTEGER RANGE 0 TO 24999 := 0;
	SIGNAL display_sel : INTEGER RANGE 0 TO 2 := 0;
	
	FUNCTION decode_digit (digit : INTEGER) RETURN STD_LOGIC_VECTOR IS -- Codificador para 7 segmentos
	BEGIN
		CASE digit IS 
			WHEN 0 => RETURN "1000000";
			WHEN 1 => RETURN "1111001";
			WHEN 2 => RETURN "0100100";
			WHEN 3 => RETURN "0110000";
			WHEN 4 => RETURN "0011001";
			WHEN 5 => RETURN "0010010";
			WHEN 6 => RETURN "0000010";
			WHEN 7 => RETURN "1111000";
			WHEN 8 => RETURN "0000000";
			WHEN 9 => RETURN "0010000";
			WHEN OTHERS => RETURN "1111111";
		END CASE;
	END decode_digit;
	
	BEGIN -- BEGIN ARCHTECTURE
	
	PROCESS (clk, reset) -- Dividir o clock em 1Hz
		BEGIN
			IF reset = '1' THEN 
				clk_count <= 0;
				clk_1hz <= '0';
			ELSIF rising_edge(clk) THEN 
				IF clk_count = 49999999 THEN 
					clk_count <= 0;
					clk_1hz <= NOT clk_1hz;
				ELSE
					clk_count <= clk_count + 1;
				END IF;
			END IF;
	END PROCESS;
	
	PROCESS (clk, reset)
		BEGIN
			IF reset = '1' THEN 
				clk_disp_count <= 0;
				clk_display <= '0';
			ELSIF rising_edge(clk) THEN
				IF clk_disp_count = 24999 THEN
					clk_disp_count <= 0;
					clk_display <= NOT clk_display;
				ELSE
					clk_disp_count <= clk_disp_count + 1;
				END IF;
			END IF;
	END PROCESS;
	
	PROCESS (clk, reset) -- Pausar
		BEGIN 
			IF	reset = '1' THEN
				paused <= '0';
			ELSIF rising_edge(clk) THEN 
				IF start_stop = '1' AND last_pause_btn = '0' THEN 
					paused <= NOT paused;
				END IF;
				last_pause_btn <= start_stop;
			END IF;
	END PROCESS;
	
	PROCESS (clk_1hz, reset, paused) -- Contagem respeitando o pause
	BEGIN 
		IF reset = '1' THEN
			seg <= 0;
			min <= 0;
		ELSIF rising_edge(clk_1hz) THEN 
			IF paused = '0' THEN
				IF seg = 59 THEN 
					seg <= 0;
					IF min < 9 THEN
						min <= min + 1;
					END IF;
				ELSE
					seg <= seg + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;
		
	PROCESS (clk_display) -- Multiplexacao dos displays
	BEGIN 
		IF rising_edge(clk_display) THEN 
			CASE display_sel IS
				WHEN 0 =>
					display_min(6 DOWNTO 0) <= decode_digit(min MOD 10); -- unidades minutos
				WHEN 1 => 
					display_seg(13 DOWNTO 7) <= decode_digit(seg / 10); -- dezenas segundos
				WHEN 2 =>
					display_seg(6 DOWNTO 0) <= decode_digit(seg MOD 10); -- unidades segundos
				WHEN OTHERS =>
					display_seg <= (others => '1');
					display_min <= (others => '1');
			END CASE;
			
			IF display_sel = 2 THEN
				display_sel <= 0;
			ELSE 
				display_sel <= display_sel + 1;
			END IF;
		END IF;
	END PROCESS;
	
END behavior;