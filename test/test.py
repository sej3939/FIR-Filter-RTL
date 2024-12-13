# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles



# FIR filter implementation in Python (matching the C implementation)
N_TAPS = 6
c = [2, 0, 5, 5, 0, 2]
    
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

    dut.rst_n.value = 0;
    await ClockCycles(dut.clk, 1)
    dut.rst_n.value = 1;

    dut._log.info("Test project behavior")
    time = 0
    # Testbench using cocotb
    for i in range(0,20): # Iterate over 20 input values
        # Apply the input value `i` and get the output from `fir` function
        dut.input_fir.value = i # Provide the input to the DUT
        expected_output = fir(i) # DUT delayed by a loop

        await ClockCycles(dut.clk, 44) # Throughput is 44 cycles
        time += 44
        # Print the result for verification
        assert expected_output == dut.output_fir.value.integer
        dut._log.info(f"time - {time} - i: {i-1} - Expected y: {expected_output} - DUT y: {dut.output_fir.value.integer}")
