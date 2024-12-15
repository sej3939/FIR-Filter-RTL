<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

FIR filters can be utilized in digital signal processing that filter out the signal in a specific frequency band. Finite impulse response indicates that the output signal is dependent on the current input signal and the finite number of past input samples. It is in contrast to the infinite impulse response (IIR) that the current output also depends on the past output through the feedback loop. The block diagram of the FIR filter is given in Figure 1 which includes the basic module of unit delay, gain and the adder.

![image](https://github.com/user-attachments/assets/7810b6d2-b94b-44b9-9ce9-42e1a1c7a7bb)

Figure 1 The block diagram of FIR filter.
 
The equation of FIR filter is

![image](https://github.com/user-attachments/assets/a7df5883-db9e-428c-beec-2c8ba44d5ee5)
 
In our module, we used an even symmetrical FIR filter with the coefficients: 2, 0, 5, 5, 0, 2. In the FIR filter design without any optimization of architecture, the input sample needs to wait for the computation to be completed before processing the next input. Such architecture limits the sampling rate of the system and frequency of input signal. For instance, an FIR filter with 17 taps requires the system to introduce a delay of 17-time units before producing the correct output after receiving the input signal. To address these limitations, the architecture of pipelining, unrolling and the combination of pipelining and unrolling are introduced.

With pipelining architecture, the computation process can be divided into several stages (7-stage in this project). This architecture allows the system to receive new input when it processes the current input. Therefore, the throughput of the system and the sampling frequency are increased with pipelining. The workflow of 7-stage pipelining in this 17 taps FIR filter is given in Table 1.

![image](https://github.com/user-attachments/assets/f101bee3-70ec-4738-a853-0c277cb76bdb)

FIR filter with unrolling architecture is to duplicate the computation module in order to process multiple input signals at the same time, which increases the system throughput. It can be regarded as parallel processing. For instance, if the FIR filter with the factor of two unrolling, it can process the computation for two inputs simultaneously. The workflow of the factor of two unrolling in 17 taps FIR filter is given in Table 2.

![image](https://github.com/user-attachments/assets/6e9d1721-6a7c-41e5-8002-068f011d67a0)

Our FIR design used no unrolling and a pipeline initiation interval of 7.

## How to test

ui_in[7:0] is input signal. ui_out[7:0] is output signal. If you put in a sequence such as [0,1,2,3,0,0,0] in real time, the output will be [0,2,4,11,15,25,17] as determined by the FIR equation

## External hardware

No external hardware needed
