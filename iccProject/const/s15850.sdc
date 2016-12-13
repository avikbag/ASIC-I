###################################################################

# Created by write_sdc on Thu Nov 24 11:04:25 2016

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports CK]  -period 2  -waveform {0 1}
set_clock_latency 0.4  [get_clocks CK]
set_clock_uncertainty 0.05  [get_clocks CK]
set_clock_transition -min -fall 0.1 [get_clocks CK]
set_clock_transition -min -rise 0.1 [get_clocks CK]
set_clock_transition -max -fall 0.1 [get_clocks CK]
set_clock_transition -max -rise 0.1 [get_clocks CK]
