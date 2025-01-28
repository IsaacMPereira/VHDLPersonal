LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_detector_prioridade IS
END tb_detector_prioridade;

ARCHITECTURE behavior OF tb_detector_prioridade IS

	COMPONENT detector_prioridade
		PORT(
			p0 : IN STD_LOGIC;
			p1 : IN STD_LOGIC;
			p2 : IN STD_LOGIC;
			p3 : IN STD_LOGIC;
			led_x1 : OUT STD_LOGIC;
			led_x0 : OUT STD_LOGIC;
			led_int : OUT STD_LOGIC
	);
	END COMPONENT;
	
	SIGNAL p0 : STD_LOGIC := '0';
	SIGNAL p1 : STD_LOGIC := '0';
	SIGNAL p2 : STD_LOGIC := '0';
	SIGNAL p3 : STD_LOGIC := '0';
	SIGNAL led_x1 : STD_LOGIC;
	SIGNAL led_x0 : STD_LOGIC;
	SIGNAL led_int : STD_LOGIC;

BEGIN
	uut: detector_prioridade PORT MAP(
		p0 => p0,
		p1 => p1,
		p2 => p2,
		p3 => p3,
		led_x1 => led_x1,
		led_x0 => led_x0,
		led_int => led_int
	);
	
	stim_proc: PROCESS
	BEGIN	
		p0 <= '0' ; p1 <= '0' ; p2 <= '0' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '0' ; p2 <= '0' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '0' ; p2 <= '1' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '0' ; p2 <= '1' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '1' ; p2 <= '0' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '1' ; p2 <= '0' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '1' ; p2 <= '1' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '0' ; p1 <= '1' ; p2 <= '1' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '0' ; p2 <= '0' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '0' ; p2 <= '0' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '0' ; p2 <= '1' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '0' ; p2 <= '1' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '1' ; p2 <= '0' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '1' ; p2 <= '0' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '1' ; p2 <= '1' ; p3 <= '0';
		WAIT FOR 10 ns;
		
		p0 <= '1' ; p1 <= '1' ; p2 <= '1' ; p3 <= '1';
		WAIT FOR 10 ns;
		
		WAIT;
	END PROCESS;
	
end behavior;

		
