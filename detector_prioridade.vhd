LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY detector_prioridade IS
	PORT(
		p0 : IN STD_LOGIC;
		p1 : IN STD_LOGIC;
		p2 : IN STD_LOGIC;
		p3 : IN STD_LOGIC;
		led_x1 : OUT STD_LOGIC;
		led_x0 : OUT STD_LOGIC;
		led_int : OUT STD_LOGIC
	);
END detector_prioridade;

ARCHITECTURE behavior OF detector_prioridade IS
BEGIN
	PROCESS (p0, p1, p2, p3)
	BEGIN
		led_x1 <= '1';
		led_x0 <= '1';
		led_int <= '1';
		
		if p0 = '0' then
			led_x1 <= '0';
			led_x0 <= '0';
			led_int <= '1';
		elsif p1 = '0' then
			led_x1 <= '0';
			led_x0 <= '1';
			led_int <= '1';
		elsif p2 = '0' then 
			led_x1 <= '1';
			led_x0 <= '0';
			led_int <= '1';
		elsif p3 = '0' then
			led_x1 <= '1';
			led_x0 <= '1';
			led_int <= '1';
		else
			led_x1 <= '1'; 
			led_x0 <= '1';
			led_int <= '0';
		end if;
	end PROCESS;
end behavior;

		
