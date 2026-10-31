library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package text_pkg is
    type pixel_data is array (0 to 23) of bit_vector(7 downto 0);
    type cor is array (2 downto 0) of bit_vector(7 downto 0);
    
    constant labels : pixel_data := (
        X"FE", X"92", X"92", X"92",  -- Letter E
        X"00", X"00",                 -- Space
        X"FE", X"90", X"90", X"F0",  -- Letter P
        X"00", X"00",                 -- Space
        X"FE", X"90", X"90", X"FE",  -- Letter A
        X"00", X"00",                 -- Space
        X"FE", X"82", X"82", X"82",  -- Letter C
        X"00", X"00"                  -- Space
    );
end package text_pkg;