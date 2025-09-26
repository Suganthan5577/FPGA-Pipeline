library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is
    signal A, B, Cin : std_logic := '0';
    signal Sum, Cout : std_logic;
begin
    uut: entity work.full_adder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    stim_proc: process
    begin
        -- Case 1: 0 + 0 + 0
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        -- Case 2: 0 + 1 + 1
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        -- Case 3: 1 + 1 + 0
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        -- Case 4: 1 + 1 + 1
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;

        wait;
    end process;
end behavior;
