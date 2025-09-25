library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 4-bit Ripple Carry Adder
entity vhdl1 is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0); -- Input A
        B    : in  STD_LOGIC_VECTOR(3 downto 0); -- Input B
        Cin  : in  STD_LOGIC;                     -- Carry In
        Sum  : out STD_LOGIC_VECTOR(3 downto 0); -- Sum
        Cout : out STD_LOGIC                      -- Carry Out
    );
end vhdl1;  -- ✅ must match entity name

architecture Behavioral of vhdl1 is
    signal C : STD_LOGIC_VECTOR(4 downto 0);
begin
    C(0) <= Cin;

    -- Bit 0
    Sum(0) <= A(0) XOR B(0) XOR C(0);
    C(1)   <= (A(0) AND B(0)) OR (A(0) AND C(0)) OR (B(0) AND C(0));

    -- Bit 1
    Sum(1) <= A(1) XOR B(1) XOR C(1);
    C(2)   <= (A(1) AND B(1)) OR (A(1) AND C(1)) OR (B(1) AND C(1));

    -- Bit 2
    Sum(2) <= A(2) XOR B(2) XOR C(2);
    C(3)   <= (A(2) AND B(2)) OR (A(2) AND C(2)) OR (B(2) AND C(2));

    -- Bit 3
    Sum(3) <= A(3) XOR B(3) XOR C(3);
    C(4)   <= (A(3) AND B(3)) OR (A(3) AND C(3)) OR (B(3) AND C(3));

    Cout <= C(4);
end Behavioral;
