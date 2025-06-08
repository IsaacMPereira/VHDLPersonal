library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity elevator_ex4 is
    Port ( M : in STD_LOGIC_VECTOR (1 DOWNTO 0); --moviment
           F1, F2, F3 : in STD_LOGIC; --floors
           SEL : in STD_LOGIC_VECTOR (1 DOWNTO 0); --selection
           OC : out STD_LOGIC); --open/close: if OC = 1, open, otherwise, close.
end elevator_ex4;

architecture Behavioral of elevator_ex4 is
begin
    process(M, F1, F2, F3, SEL)
    begin
        case SEL is
            when "00" =>
                if F1 = '1' and M = "00" then
                    OC <= '1';
                else
                    OC <= '0';
                end if;
            when "01" =>
                if F2 = '1' and M = "00" then
                    OC <= '1';
                else
                    OC <= '0';
                end if;
            when "10" =>
                if F3 = '1' and M = "00" then
                    OC <= '1';
                else    
                    OC <= '0';
                end if;
            when others => 
                OC <= '0';  
        end case;
    end process;
end Behavioral;
    