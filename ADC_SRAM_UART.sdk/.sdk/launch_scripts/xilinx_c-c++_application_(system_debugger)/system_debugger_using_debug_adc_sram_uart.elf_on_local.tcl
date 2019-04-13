connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328AA0008A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328AA0008A"} -index 0
dow C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.sdk/ADC_SRAM_UART/Debug/ADC_SRAM_UART.elf
bpadd -addr &main
