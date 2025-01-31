LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_alarmeVeicular IS
END tb_alarmeVeicular;

ARCHITECTURE behavior OF tb_alarmeVeicular IS
	COMPONENT alarmeVeicular
		PORT(
			k1_porta : IN STD_LOGIC;
			k2_ing : IN STD_LOGIC;
			k3_farol : IN STD_LOGIC;
			buzzer : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL k1_porta : STD_LOGIC := '0';
	SIGNAL k2_ing : STD_LOGIC := '0';
	SIGNAL k3_farol : STD_LOGIC := '0';
	SIGNAL buzzer : STD_LOGIC;
	
BEGIN 
	uut: alarmeVeicular PORT MAP(
		k1_porta => k1_porta,
		k2_ing => k2_ing,
		k3_farol => k3_farol,
		buzzer => buzzer
	);
	
	stim_proc: PROCESS
	BEGIN
		k1_porta <= '0'; k2_ing <= '0'; k3_farol <= '0'; --000
      WAIT FOR 10 ns;

      k1_porta <= '0'; k2_ing <= '0'; k3_farol <= '1'; --001 
      WAIT FOR 10 ns;

      k1_porta <= '0'; k2_ing <= '1'; k3_farol <= '0'; --010
      WAIT FOR 10 ns;

      k1_porta <= '0'; k2_ing <= '1'; k3_farol <= '1'; --011 
      WAIT FOR 10 ns;

      k1_porta <= '1'; k2_ing <= '0'; k3_farol <= '0'; --100 
      WAIT FOR 10 ns;

      k1_porta <= '1'; k2_ing <= '0'; k3_farol <= '1'; --101
      WAIT FOR 10 ns;

      k1_porta <= '1'; k2_ing <= '1'; k3_farol <= '0'; --110 
		WAIT FOR 10 ns;

      k1_porta <= '1'; k2_ing <= '1'; k3_farol <= '1'; --111
		WAIT FOR 10 ns;
		
		WAIT;
	END PROCESS;
END behavior;
