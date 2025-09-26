library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor_tb is
end adder_subtractor_tb;

architecture behavior of adder_subtractor_tb is
    signal A, B : std_logic_vector(3 downto 0) := (others => '0');
    signal M    : std_logic := '0'; -- mode: 0=add, 1=subtract
    signal Sum  : std_logic_vector(3 downto 0);
    signal Cout : std_logic;
begin
    uut: entity work.adder_subtractor
        port map (
            A => A,
            B => B,
            M => M,
            Sum => Sum,
            Cout => Cout
        );

    stim_proc: process
    begin
        -- Add: 5 + 3
        A <= "0101"; B <= "0011"; M <= '0'; wait for 10 ns;

        -- Subtract: 7 - 2
        A <= "0111"; B <= "0010"; M <= '1'; wait for 10 ns;

        -- Add: 15 + 1
        A <= "1111"; B <= "0001"; M <= '0'; wait for 10 ns;

        -- Subtract: 8 - 9
        A <= "1000"; B <= "1001"; M <= '1'; wait for 10 ns;

        wait;
    end process;
end behavior;
