library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity traftLight_ex3 is
    Port ( RA : in STD_LOGIC; --rua a
           RB : in STD_LOGIC; --rua b
           S1 : out STD_LOGIC; --semáforo 1
           S2 : out STD_LOGIC); --semáforo 2
end traftLight_ex3;

architecture Behavioral of traftLight_ex3 is
begin
    process(RA, RB)
    begin
        if RA = '0' and RB = '0' then --00
            S1 <= '1';
            S2 <= '0';
        elsif RA = '0' and RB = '1' then --01
            S1 <= '0';
            S2 <= '1';
        elsif RA = '1' and RB = '0' then --10
            S1 <= '1';
            S2 <= '0';
        elsif RA = '1' and RB = '1' then --11
            S1 <= '1';
            S2 <= '0';
        end if;
    end process;
end Behavioral;
