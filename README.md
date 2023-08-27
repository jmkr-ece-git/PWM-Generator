# PWM Generator
## What is PWM?
Pulse Width Modulation is a technique of controlling the average voltage. It is a stream of voltage pulses that reduces the electric power supplied by the electrical signal. It is a square wave signal, which is represented as

<picture> <img width="318" alt="image" src="https://github.com/Gurusatwik/PWM-Generator/assets/113631826/a2c1c02f-ba71-44c8-aacd-cfa70b39a7bf">

This implies that PWM has only 2 outputs i.e.,
- HIGH (LOGIC 1)
- LOW (LOGIC 0)
The duty cycle of the rectangular pulse is shown as follows

<picture> <img width="147" alt="image" src="https://github.com/Gurusatwik/PWM-Generator/assets/113631826/23dc928f-69db-4969-8034-d0386e258d60">

where,
- t<sub>o</sub> is the time period for which the signal is LOGIC 1
- t<sub>c</sub> is the total time period of the signal

For example, let us assume that our output signal is having a timeperiod of 20ns
- 0% Duty cycle implies that the signal is HIGH for 0ns and LOW for 20ns
- 25% Duty cycle implies that the signal is HIGH for 5ns and LOW for 15ns
- 50% Duty cycle implies that the signal is HIGH for 10ns and LOW for 10ns
- 75% Duty cycle implies that the signal is HIGH for 15ns and LOW for 5ns
- 100% Duty cycle implies that the signal is HIGH for 20ns and LOW for 0ns

<picture> <img width="395" alt="image" src="https://github.com/Gurusatwik/PWM-Generator/assets/113631826/c34db129-52d8-45d6-84ef-3c7c9a838465">

## Applications
- Voltage regulation
- Audio signal generation
- Pump Hydraulics
- Servo motor
- CPU fan speed control
- Encoding in Telecommunication
- Motor speed controller

## PWM Generator using Verilog-HDL
PWM generator was designed in Verilog-HDL using `Xilinx Vivado 2022.2`. There are few changes that are to be done before doing the simulation
- Step 1: Open Vivado 2022.2 on your system
  <picture> <img width="350" alt="Untitled" src="https://github.com/Gurusatwik/PWM-Generator/assets/113631826/6a1cbdcf-ec15-4bfd-8084-ca52982af4c6">

