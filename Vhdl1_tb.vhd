library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Vhdl1_tb is
end Vhdl1_tb;

architecture sim of Vhdl1_tb is
    signal A, B  : std_logic_vector(3 downto 0);
    signal Cin   : std_logic := '0';
    signal Sum   : std_logic_vector(3 downto 0);
    signal Cout  : std_logic;
begin
    -- DUT (Device Under Test)
    DUT: entity work.Vhdl1
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test 1
        A <= "0001"; B <= "0010"; Cin <= '0';  -- 1 + 2
        wait for 10 ns;

        -- Test 2
        A <= "0101"; B <= "0011"; Cin <= '1';  -- 5 + 3 + 1
        wait for 10 ns;

        -- Test 3
        A <= "1111"; B <= "0001"; Cin <= '0';  -- 15 + 1
        wait for 10 ns;

        wait;
    end process;
end sim;

