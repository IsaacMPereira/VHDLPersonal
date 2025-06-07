library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity meuModulo1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
end meuModulo1;

architecture Behavioral of meuModulo1 is
begin
    s <= a and b;

end Behavioral;
