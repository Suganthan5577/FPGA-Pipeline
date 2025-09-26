library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier_tb is
end multiplier_tb;

architecture behavior of multiplier_tb is
    signal A, B : std_logic_vector(3 downto 0) := (others => '0');
    signal P    : std_logic_vector(7 downto 0);
begin
    uut: entity work.multiplier
        port map (
            A => A,
            B => B,
            P => P
        );

    stim_proc: process
    begin
        -- 3 * 2
        A <= "0011"; B <= "0010"; wait for 10 ns;

        -- 5 * 7
        A <= "0101"; B <= "0111"; wait for 10 ns;

        -- 8 * 9
        A <= "1000"; B <= "1001"; wait for 10 ns;

        -- 15 * 15
        A <= "1111"; B <= "1111"; wait for 10 ns;

        wait;
    end process;
end behavior;
