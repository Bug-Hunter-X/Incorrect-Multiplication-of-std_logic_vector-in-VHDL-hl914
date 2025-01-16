```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY multiplier IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
  SIGNAL product : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
  SIGNAL a_unsigned : UNSIGNED(7 DOWNTO 0);
  SIGNAL b_unsigned : UNSIGNED(7 DOWNTO 0);
BEGIN
  a_unsigned <= UNSIGNED(a);
  b_unsigned <= UNSIGNED(b);
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      product <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      product <= a_unsigned * b_unsigned;
    END IF;
  END PROCESS;
  p <= STD_LOGIC_VECTOR(product);
END ARCHITECTURE;
```