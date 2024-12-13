# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles



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

@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # Set the clock period to 10 ns (100 MHz)
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    dut.rst_n.value = 1;
    dut.ena.value = 1;

    dut._log.info("Test project behavior")

    # Testbench using cocotb
    for i in range(30):  # Iterate over 30 input values
        # Apply the input value `i` and get the output from `fir` function
        expected_output = fir(i)

        dut.input_fir.value = i # Provide the input to the DUT
        await ClockCycles(dut.clk, 20)  # Wait for twenty clock cycle

        # Get the output from the DUT
        dut_output = dut.output_fir.value  # Assuming output is 'y'

        # Check if the output is as expected
        assert dut_output == expected_output, f"Test failed for i = {i}: Expected {expected_output}, got {dut_output}"

        # Print the result for verification
        dut._log.info(f"i: {i} - Expected y: {expected_output} - DUT y: {dut_output}.")


