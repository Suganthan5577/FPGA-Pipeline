library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_subtractor is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        M    : in  STD_LOGIC;  -- 0 = add, 1 = subtract
        Sum  : out STD_LOGIC_VECTOR(3 downto 0);
        Cout : out STD_LOGIC
    );
end adder_subtractor;

architecture Behavioral of adder_subtractor is
    signal B_xor : STD_LOGIC_VECTOR(3 downto 0);
    signal temp  : UNSIGNED(4 downto 0);
begin
    B_xor <= B XOR (M & M & M & M);
    temp  <= unsigned(A) + unsigned(B_xor) + (M);
    Sum   <= STD_LOGIC_VECTOR(temp(3 downto 0));
    Cout  <= temp(4);
end Behavioral;
