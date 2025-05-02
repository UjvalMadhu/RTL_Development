-- ///////////////////////////////////////////////////////////////////////////////////
-- ///                                                                             /// 
-- ///                         3-Bit Palindrome Detector                           ///
-- ///                                                                             ///
-- ///////////////////////////////////////////////////////////////////////////////////
-- /// This design detects a 3 bit overlapping palindrome sequence                 ///
-- ///                                                                             ///
-- ///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
-- ///////////////////////////////////////////////////////////////////////////////////
-- //  CVS Log
-- //
-- //  Id: palindrome_3bit.vhd, v 1.0
-- //
-- //  $Date: 2024-29-04
-- //  $Revision: 1.0 $
-- //  $Author:  Ujval Madhu


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity palindrome_3bit is
port (
    clk             :  in std_logic;
    reset           :  in std_logic;
    x_i             :  in std_logic;
    palindrome_o    :  out std_logic;
);
end entity;


architecture logic of palindrome_3bit is
    signal x1   : std_logic;                  -- x1 and x2 are for signal Propagation and r1 and r2 are for reset propagation 
    signal x2   : std_logic;
    signal r1   : std_logic;
    signal r2   : std_logic;

begin

    process(clk, reset) is
    begin
        if reset = '1' then
            x1 <= '0';
            x2 <= '0';
            r1 <= '1';
            r2 <= '0';
        elsif rising_edge(clk) then
            x1 <= x_i;
            x2 <= x1;
            r1 <= 1'b0;
            r2 <= r1;
        end if;
    end process

    --palindrome_o = (r1 || r2) ? 1'b0 : {x_i,x1,x2} == {x2,x1,x_i};
    palindrome_o <= '0' when (r1 = r2) else ((x_i & x1 & x2) = (x2 & x1 & x_i));

end architecture;

