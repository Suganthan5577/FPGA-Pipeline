library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplier is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        P    : out STD_LOGIC_VECTOR(7 downto 0)
    );
end multiplier;

architecture Behavioral of multiplier is
begin
    P <= STD_LOGIC_VECTOR(unsigned(A) * unsigned(B));
end Behavioral;
