library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity simpleMux is
    Port ( i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i4 : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 DOWNTO 0);
           y : out STD_LOGIC);
end simpleMux;

architecture Behavioral of simpleMux is
begin
    process(i1, i2, i3, i4, sel)
    begin
        case sel is
            when "00" => y <= i1;
            when "01" => y <= i2;
            when "10" => y <= i3;
            when "11" => y <= i4;
            when others => y <= '0';
        end case;
    end process;
end Behavioral;
