# Incorrect Multiplication of std_logic_vector in VHDL

This repository demonstrates a common error in VHDL: attempting to directly multiply `std_logic_vector` types using the `*` operator.  This operator is not defined for `std_logic_vector` and will result in a synthesis error or unexpected behavior. The correct approach is to use a function or a process to perform the bit-level multiplication. The `bug.vhdl` file shows the erroneous code, while `bugSolution.vhdl` provides the corrected version.

## Problem
The `bug.vhdl` file contains a simple multiplier entity that attempts to directly multiply two 8-bit vectors. This results in a compilation error or incorrect results during synthesis.

## Solution
The `bugSolution.vhdl` file demonstrates the correct way to multiply two `std_logic_vector` types in VHDL by using a process to perform the multiplication bit by bit.