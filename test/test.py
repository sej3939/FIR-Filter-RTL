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
    for i in range(20):  # Iterate over 30 input values
        # Apply the input value `i` and get the output from `fir` function
        expected_output = fir(i)
        if time == 0:
            await ClockCycles(dut.clk, 1)
        dut.input_fir.value = i # Provide the input to the DUT
        while dut.y_trio.value == 0:
            await ClockCycles(dut.clk, 1)
            time += 1
        await ClockCycles(dut.clk, 1)
        # Print the result for verification
        dut._log.info(f"time - {time} - i: {i} - Expected y: {expected_output} - DUT y: {dut.output_fir.value.integer}.")

"""
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer

@cocotb.test()
async def test_fir(dut):
    #Testbench for FIR module using Cocotb

    # Create a clock with a period of 10ns (100 MHz)
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Initialize inputs
    dut.rst_n.value = 0
    dut.input_fir.value = 0
    await Timer(100, units="ns")  # Wait for reset to settle

    # Deassert reset
    dut.rst_n.value = 1
    await RisingEdge(dut.clk)  # Wait for a clock edge

    # Input test sequence
    test_data = [1, 2, 3, 4, 5, 6, 7, 8]  # Example input samples
    expected_output = [0, 0, 0, 0, 0, 0, 0, 0]  # Replace with actual FIR expected outputs

    for i, data in enumerate(test_data):
        dut.input_fir.value = data

        # Wait for a clock cycle
        await RisingEdge(dut.clk)

        # Capture and print the output
        output = dut.output_fir.value
        cocotb.log.info(f"Cycle {i + 1}: Input = {data}, Output = {output}")

        # Check against expected value (update `expected_output` with correct values)
        if i < len(expected_output):
            assert output == expected_output[i], f"Mismatch at cycle {i + 1}: Expected {expected_output[i]}, Got {output}"

    cocotb.log.info("Test completed successfully!")
"""
