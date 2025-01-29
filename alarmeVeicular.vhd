LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alarmeVeicular IS
	PORT(
		k1_porta : IN STD_LOGIC;
		k2_ing : IN STD_LOGIC;
		k3_farol : IN STD_LOGIC;
		buzzer : OUT STD_LOGIC
	);
END alarmeVeicular;

ARCHITECTURE behavior of alarmeVeicular IS
	SIGNAL alarme : STD_LOGIC;
BEGIN
	PROCESS(k1_porta, k2_ing, k3_farol)
	BEGIN 
		buzzer <= '1';
		
		if (k2_ing <= '0') then
			if (k1_porta <= '0') then
				buzzer <= '0';
			end if;
		elsif (k2_ing <= '1') then
			if (k3_farol <= '0') then
				buzzer <= '0';
			end if;
		end if;
	end PROCESS;
end behavior;
