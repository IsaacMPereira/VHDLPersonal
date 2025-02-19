library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity crono is
    Port (
        clk           : in STD_LOGIC;
        rst           : in STD_LOGIC;
        display       : out STD_LOGIC_VECTOR(6 downto 0);
        anode         : out STD_LOGIC_VECTOR(2 downto 0);
        btn_debounced : in STD_LOGIC -- Adicionado filtro para bouncing
    );
end crono;

architecture Behavioral of crono is
    signal clk_div          : unsigned(25 downto 0) := (others => '0');
    signal mux_clk_div      : unsigned(15 downto 0) := (others => '0');
    signal one_sec_pulse    : STD_LOGIC := '0';
    signal mux_pulse        : STD_LOGIC := '0';
    signal seconds          : integer range 0 to 59 := 0;
    signal minutes          : integer range 0 to 9 := 0;
    signal running          : STD_LOGIC := '0';
    signal anode_sel        : integer range 0 to 2 := 0; -- Para multiplexação dos displays
    signal digit_value      : integer range 0 to 9 := 0;

begin
    -- Divisor de clock para 1 segundo (ajustável para 50MHz)
    process (clk)
    begin
        if rising_edge(clk) then
            if clk_div = 49999999 then
                clk_div <= (others => '0');
                one_sec_pulse <= '1';
            else
                clk_div <= clk_div + 1;
                one_sec_pulse <= '0';
            end if;
        end if;
    end process;

    -- Divisor de clock para multiplexação dos displays (~1kHz para visualização clara)
    process (clk)
    begin
        if rising_edge(clk) then
            if mux_clk_div = 50000 then
                mux_clk_div 	<= (others => '0');
                mux_pulse 		<= '1';
            else
                mux_clk_div 	<= mux_clk_div + 1;
                mux_pulse 		<= '0';
            end if;
        end if;
    end process;

    -- Contador de minutos e segundos
    process (clk,btn_debounced)
    begin
        if rising_edge(clk) then
            if rst = '0' then  -- Lógica negativa
                seconds <= 0;
                minutes <= 0;
                running <= '0';
            elsif btn_debounced = '0' then -- Lógica negativa -- 
                running <= not running;
            end if;
            
            if one_sec_pulse = '1' and running = '1' then
                if seconds = 59 then
                    seconds <= 0;
                    if minutes < 9 then
                        minutes <= minutes + 1;
                    end if;
                else
                    seconds <= seconds + 1;
                end if;
            end if;
        end if;
    end process;

    -- Multiplexação dos displays
    process (clk)
    begin
        if rising_edge(clk) then
            if mux_pulse = '1' then
                anode_sel <= (anode_sel + 1) mod 3;
            end if;
        end if;
    end process;
    
    anode <= "110" when anode_sel = 0 else
             "101" when anode_sel = 1 else
             "011";

    -- Seleção do valor a ser exibido
    process (anode_sel, seconds, minutes)
    begin
        case anode_sel is
            when 0 => digit_value <= minutes;
            when 1 => digit_value <= seconds / 10;
            when 2 => digit_value <= seconds mod 10;
            when others => digit_value <= 0;
        end case;
    end process;

    -- Decodificador para display de 7 segmentos
    process (digit_value)
    begin
        case digit_value is
				when 0 => display <= "1000000";
            when 1 => display <= "1111001";
            when 2 => display <= "0100100";
            when 3 => display <= "0110000";
            when 4 => display <= "0011001";
            when 5 => display <= "0010010";
            when 6 => display <= "0000010";
            when 7 => display <= "1111000";
            when 8 => display <= "0000000";
            when 9 => display <= "0010000";
            when others => display <= "1111111";
        end case;
    end process;

end Behavioral;
