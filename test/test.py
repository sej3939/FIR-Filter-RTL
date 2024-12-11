# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

def right_shift_and_insert(arr, insertion):
    return [insertion] + arr[:-1]  # Add insertion at the start, drop the last element

def mult_and_sum(arr1, arr2):
    sum = 0
    
        sum += arr1[i] * arr2[i]
    return sum

@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # Set the clock period to 10 us (100 KHz)
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    dut._log.info("Test project behavior")
    
    TAPS = [75, 0, 95, 95, 0, 75]
    input_mem = [0, 0, 0, 0, 0, 0]
    input_seq = [1, 1, 0, 0, 0, 0]

    # Set the input values you want to test
    

