LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_detectorParidade IS 
END tb_detectorParidade;

ARCHITECTURE behavior OF tb_detectorParidade IS

	COMPONENT detectorParidade
		PORT(
			key1 : IN STD_LOGIC;
			key2 : IN STD_LOGIC;
			key3 : IN STD_LOGIC;
			led0 : OUT STD_LOGIC;
			led1 : OUT STD_LOGIC
		);
	END COMPONENT;
	
BEGIN 
	uut: detectorParidade PORT MAP(
		key1 => key1;
		key2 => key2;
		key3 => key3;
		led0 => led0;
		led1 => led1;
	);
	
	stim_proc: PROCESS
	BEGIN
		key1 <= '0'; key2 <= '0'; key3 <= '0';
		WAIT FOR 10 ns;
		
		key1 <= '0'; key2 <= '0'; key3 <= '1';
		WAIT FOR 10 ns;
		
		key1 <= '0'; key2 <= '1'; key3 <= '0';
		WAIT FOR 10 ns;
		
		key1 <= '0'; key2 <= '1'; key3 <= '1';
		WAIT FOR 10 ns;
		
		key1 <= '1'; key2 <= '0'; key3 <= '0';
		WAIT FOR 10 ns;
		
		key1 <= '1'; key2 <= '0'; key3 <= '1';
		WAIT FOR 10 ns;
		
		key1 <= '1'; key2 <= '1'; key3 <= '0';
		WAIT FOR 10 ns;
		
		key1 <= '1'; key2 <= '1'; key3 <= '1';
		WAIT FOR 10 ns;
		
		WAIT;
	END PROCESS;
END behavior;