LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY crono IS
	PORT(
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		start_stop : IN STD_LOGIC;
		display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		display_anodo : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	 );
END crono;

ARCHITECTURE behavior OF crono IS
	-- SIGNAL SIGNAL

	FUNCTION decode (digit : INTEGER) RETURN STD_LOGIC_VECTOR IS 
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
	END decode;

	BEGIN -- Begin archtecture
	
	PROCESS dividir_clk()
	BEGIN 
		IF reset = '1' THEN














































