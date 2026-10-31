library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity predivider is
    generic (
        DIVIDER : integer := 50000000
    );
    port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        enddivider : out std_logic
    );
end entity predivider;

architecture bhv of predivider is
    signal cnt : natural range 0 to DIVIDER := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            cnt <= 0;
            enddivider <= '0';
        elsif rising_edge(clk) then
            if cnt >= DIVIDER - 1 then
                cnt <= 0;
                enddivider <= '1';
            else
                cnt <= cnt + 1;
                enddivider <= '0';
            end if;
        end if;
    end process;
end architecture bhv;