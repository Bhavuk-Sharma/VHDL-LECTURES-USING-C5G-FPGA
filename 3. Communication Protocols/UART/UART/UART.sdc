## Generated SDC file "UART.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

## DATE    "Fri Feb 26 12:49:40 2021"

##
## DEVICE  "5CGXFC5C6F27C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 20.000 -waveform { 0.000 12.000 } [get_ports {clock_50}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -hold 0.270  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {UART_RXD}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {UART_RXD}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {key}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {key}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[0]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[0]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[1]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[1]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[2]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[2]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[3]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[3]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[4]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[4]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[5]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[5]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[6]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[6]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {sw[7]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {sw[7]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {UART_TXD}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {UART_TXD}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[2]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[3]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[3]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[4]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[4]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[5]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[5]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[6]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[6]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledg[7]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledg[7]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[2]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[3]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[3]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[4]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[4]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[5]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[5]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[6]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[6]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {ledr[7]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {ledr[7]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

