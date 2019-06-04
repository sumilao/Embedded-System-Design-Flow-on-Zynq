connect -url tcp:127.0.0.1:3121
source D:/github/Embedded-System-Design-Flow-on-Zynq/labsolutions/embedded/2018_2_pynq_z2_labsolution/lab2/lab2.sdk/system_wrapper_hw_platform_1/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
loadhw -hw D:/github/Embedded-System-Design-Flow-on-Zynq/labsolutions/embedded/2018_2_pynq_z2_labsolution/lab2/lab2.sdk/system_wrapper_hw_platform_1/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
dow D:/github/Embedded-System-Design-Flow-on-Zynq/labsolutions/embedded/2018_2_pynq_z2_labsolution/lab2/lab2.sdk/TestApp/Debug/TestApp.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
con
