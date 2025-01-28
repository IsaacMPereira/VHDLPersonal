LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alarmeVeicular IS
	PORT(
		k1 : IN STD_LOGIC;
		k2 : IN STD_LOGIC;
		k3 : IN STD_LOGIC;
		buzzer : OUT STD_LOGIC
	);
END alarmeVeicular;

ARCHITECTURE behavior of alarmeVeicular IS
	SIGNAL alarme : STD_LOGIC;
BEGIN
	PROCESS(k1, k2, k3)
	BEGIN 
		buzzer <= '1';
		
		if (k3 <= '0' and k2 <= '0') or (k1 <= '0' and k2 <= '0')then 
			buzzer <= '0';
		end if;
	end PROCESS;
end behavior;