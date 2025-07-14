library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
----------ENTITY----------
entity clk_div is
  port (
    clk_in  : in  std_logic;   
    reset   : in  std_logic;   
    clk_out : out std_logic    
  );
end clk_div;

architecture Behavioral of clk_div is
  
  signal cnt : unsigned(25 downto 0) := (others => '0');  
  signal clk_toggle : std_logic := '0';
begin
  process(clk_in, reset)
  begin
    if reset = '1' then
      cnt     <= (others => '0');
      clk_toggle <= '0';
    elsif rising_edge(clk_in) then
      if cnt = 49_999_999 then
        cnt     <= (others => '0');
        clk_toggle <= not clk_toggle;
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process;
  
  clk_out <= clk_toggle;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
----------ENTITY----------
entity seq_cnt is
  port (
    clk     : in  std_logic;  
    reset   : in  std_logic;  
    value   : out integer range 1 to 9  
  );
end seq_cnt;

architecture Behavioral of seq_cnt is
  signal state : integer range 1 to 9 := 1;
begin
  process(clk, reset)
  begin
    if reset = '1' then
      state <= 1;
    elsif rising_edge(clk) then
      case state is
        when 1 => state <= 9;
        when 9 => state <= 2;
        when 2 => state <= 3;
        when 3 => state <= 8;
        when 8 => state <= 4;
        when 4 => state <= 6;
        when 6 => state <= 7;
        when 7 => state <= 5;
        when 5 => state <= 1;
        when others => state <= 1;
      end case;
    end if;
  end process;

  value <= state;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
----------ENTITY----------
entity seg7_decoder is
  port (
    num : in  integer range 0 to 9;       
    seg : out std_logic_vector(6 downto 0) 
  );
end seg7_decoder;

architecture Behavioral of seg7_decoder is
begin
  process(num)
  begin
    case num is
      when 0 => seg <= "0000001";
      when 1 => seg <= "1001111";
      when 2 => seg <= "0010010";
      when 3 => seg <= "0000110";
      when 4 => seg <= "1001100";
      when 5 => seg <= "0100100";
      when 6 => seg <= "0100000";
      when 7 => seg <= "0001111";
      when 8 => seg <= "0000000";
      when 9 => seg <= "0000100";
      when others => seg <= "1111111";  
    end case;
  end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
----------ENTITY----------
entity top_sequence_counter is
  port (
    CLK100    : in  std_logic;                
    RESET_BTN : in  std_logic;                
    SEG_OUT   : out std_logic_vector(6 downto 0);
    AN        : out std_logic_vector(3 downto 0) 
  );
end top_sequence_counter;

architecture Structural of top_sequence_counter is
  signal clk_1hz  : std_logic;
  signal seq_val  : integer range 1 to 9;
begin

  u_clkdiv : entity work.clk_div
    port map (
      clk_in  => CLK100,
      reset   => RESET_BTN,
      clk_out => clk_1hz
    );
    
  u_seqcnt : entity work.seq_cnt
    port map (
      clk   => clk_1hz,
      reset => RESET_BTN,
      value => seq_val
    );

  u_decoder : entity work.seg7_decoder
    port map (
      num => seq_val,
      seg => SEG_OUT
    );

    AN <= "1110"; 
end Structural;
