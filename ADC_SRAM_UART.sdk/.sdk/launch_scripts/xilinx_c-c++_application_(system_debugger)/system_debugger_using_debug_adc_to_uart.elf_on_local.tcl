connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328AA0008A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328AA0008A"} -index 0
dow C:/FPGA_Projects/AXI_FIFO_Test/AXI_FIFO_Test.sdk/ADC_TO_UART/Debug/ADC_TO_UART.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328AA0008A"} -index 0
con
