LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY detectorParidade IS
	PORT (
		key1 : IN STD_LOGIC;
		key2 : IN STD_LOGIC;
		key3 : IN STD_LOGIC;
		led0 : OUT STD_LOGIC;
		led1 : OUT STD_LOGIC
	);
END detectorParidade;

ARCHITECTURE behavior OF detectorParidade IS 
	SIGNAL paridade : STD_LOGIC;
BEGIN
	PROCESS (key1, key2, key3)
	BEGIN 
		paridade <= key1 XOR key2 XOR key3;
		led0 <= NOT paridade;
		led1 <= paridade;
	END PROCESS;
END behavior;