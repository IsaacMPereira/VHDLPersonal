library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity batteryMonitor_ex1 is
    Port ( voltage : in STD_LOGIC_VECTOR(3 DOWNTO 0);
           lamp : out STD_LOGIC);
end batteryMonitor_ex1;

architecture Behavioral of batteryMonitor_ex1 is
begin
    process(voltage)
    begin
        if voltage > "0110" then 
            lamp <= '1';
        else
            lamp <= '0';
        end if;
    end process;
end Behavioral;
