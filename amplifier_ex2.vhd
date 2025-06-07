library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity amplifier_ex2 is
    Port ( TD : in STD_LOGIC;
           TF : in STD_LOGIC;
           FM : in STD_LOGIC;
           STD: out STD_LOGIC;
           STF: out STD_LOGIC;
           SFM: out STD_LOGIC
           );
end amplifier_ex2;

architecture Behavioral of amplifier_ex2 is
begin
    process(TD, TF, FM)
    begin
        if TD = '0' and TF = '0' and FM = '0' then --000
            STD <= '0';
            STF <= '0';
            SFM <= '0';
        elsif TD = '0' and TF = '0' and FM = '1' then --001
            STD <= '0';
            STF <= '0';
            SFM <= '1';
        elsif TD = '0' and TF = '1' and FM = '0' then --010
            STD <= '0';
            STF <= '1';
            SFM <= '0';
        elsif TD = '0' and TF = '1' and FM = '1' then --011
            STD <= '0';
            STF <= '1';
            SFM <= '1';
        elsif TD = '1' and TF = '0' and FM = '0' then --100
            STD <= '1';
            STF <= '0';
            SFM <= '0';
        elsif TD = '1' and TF = '0' and FM = '1' then --101
            STD <= '1';
            STF <= '0';
            SFM <= '1';
        elsif TD = '1' and TF = '1' and FM = '0' then --110
            STD <= '1';
            STF <= '1';
            SFM <= '0';
        elsif TD = '1' and TF = '1' and FM = '1' then --111
            STD <= '1';
            STF <= '1';
            SFM <= '1';
        else   
            STD <= '0';
            STF <= '0';
            SFM <= '0';
        end if;
    end process;
end Behavioral;
