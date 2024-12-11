# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

def right_shift_and_insert(arr, insertion):
    return [insertion] + arr[:-1]  # Add insertion at the start, drop the last element

def mult_and_sum(arr1, arr2):
    sum = 0
    for i in range(arr1):
        sum += arr1[i] * arr2[i]
    return sum

@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # Set the clock period to 10 us (100 KHz)
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    dut._log.info("Test project behavior")
    
    TAPS = [75, 0, -95, 0 , 37, 0, -60, -60, 0, 37, 0, -95, 0, 75]
    input_mem = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    input_seq = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

    # Set the input values you want to test
    for i in range(input_Seq):
        input_mem = right_shift_and_insert(input_mem, input_seq[i])
        dut.input_fir.value = input_mem
        fir_out = mult_and_sum(input_mem, TAPS)    
        
        # Wait for one clock cycle to see the output values
        await ClockCycles(dut.clk, 10)

        # The following assersion is just an example of how to check the output values.
        # Change it to match the actual expected output of your module:
        dut._log.info(f"value of outputs are: {dut.output_fir.value}.")
        # If these passes don't work, fail the program and show what you failed.
    
        # Keep testing the module by changing the input values, waiting for
        # one or more clock cycles, and asserting the expected output values.

