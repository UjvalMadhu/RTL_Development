--///////////////////////////////////////////////////////////////////////////////////
--///                                                                             /// 
--///                   64-Bit Atomic Counter with 32-Bit Bus                     ///
--///                                                                             ///
--///////////////////////////////////////////////////////////////////////////////////
--/// A 64-bit event counter module and its 32-bit bus interface for a            ///
--/// micro-controller. The counter increments on a trigger input, sends the      ///
--/// counter value over through the bus in 2 single cycle atomic reads and       ///
--/// issues an ack for each read. Two req must be asserted for completely        ///
--/// reading the 64 bit counter value using the 32 bit bus.                      ///
--///                                                                             ///
--///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
--///////////////////////////////////////////////////////////////////////////////////
--//  CVS Log
--//
--//  Id: atm_counter.vhd, v 1.0
--//
--//  $Date: 2024-24-04
--//  $Revision: 1.0 $
--//  $Author:  Ujval Madhu


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity atm_counter is
    port(
        clk     : in std_logic;
        reset   : in std_logic;
        trig_i  : in std_logic;
        atomic_i: in std_logic;
        req_i   : in std_logic;

        ack_o   : out std_logic;
        count_o : out std_logic_vector(31 downto 0);
    );
end atm_counter


-- Internal Logic

architecture logic of atm_counter is
    signal count_reg    : std_logic_vector(63 downto 0);
    signal count_MSB    : std_logic_vector(31 downto 0);
    signal ack_reg      : std_logic;

    begin
    
    -- Count Logic
        process(clk, reset)
        begin
            if reset = '1' then
                count_reg <= (others => '0');
            elsif rising_edge(clk) then
                if(trig_i = '1') then
                    count_reg <= count_reg + 1;
                else
                    count_reg <= count_reg;
                end if;
            end if;
        end process;

    -- MSB Logic
        process(clk, reset)
        begin
            if reset = '1' then
                count_MSB <= (others =>'0');
            elsif rising_edge(clk) then
                count_MSB <= count_reg(63 downto 0);
            end if;
        end process;

    -- ACK Logic
        process(clk, reset)
        begin
            if reset = '1' then
                ack_o <= '0';
            elsif rising_edge(clk) then
                if(req_i = '1') then
                    ack_o <= '1';
                end if;
            end if;
        end process;

    -- Output Logic
        process(clk, rst) begin
            if(reset) then
                count_o <= (others => '0');
            elsif(req_i) then
                if(atomic_i) then
                    count_o <= count_reg(31 downto 0);
                else 
                    count_o <= count_MSB;
                end if;
            else 
                count_o <= (others => '0');
            end if;
        end process;

end architecture;