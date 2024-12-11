# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles
from cocotb.regression import TestFactory
from cocotb.binary import BinaryValue
from cocotb.regression import TestFactory

# FIR filter implementation in Python (matching the C implementation)
N_TAPS = 6
c = [75, 0, 95, 95, 0, 75]

# The shift register is static in C, so we can simulate it as a list in Python
shift_reg = [0] * N_TAPS

def fir(x):
    acc = 0
    # Shift and accumulate loop
    for i in range(N_TAPS-1, -1, -1):
        if i == 0:
            acc += x * c[0]
            shift_reg[0] = x
        else:
            shift_reg[i] = shift_reg[i-1]
            acc += shift_reg[i] * c[i]
    return acc

# Testbench using cocotb
@cocotb.coroutine
def test_fir(dut):
    for i in range(30):  # Iterate over 30 input values
        # Apply the input value `i` and get the output from `fir` function
        expected_output = fir(i)

        # Assign input to the DUT (assuming input is on 'x' and output is on 'y')
        dut.input_fir.value <= i  # Provide the input to the DUT
        yield cocotb.clock.scenario(1)  # Wait for one clock cycle

        # Get the output from the DUT
        dut_output = dut.output_fir.value  # Assuming output is 'y'

        # Check if the output is as expected
        assert dut_output == expected_output, f"Test failed for i = {i}: Expected {expected_output}, got {dut_output}"

        # Print the result for verification
        print(f"i: {i} - Expected y: {expected_output} - DUT y: {dut_output}")

# Create the test factory and run the test
factory = TestFactory(test_fir)
factory.generate_tests()
