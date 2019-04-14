# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config  -id {Synth 8-5413}  -string {{CRITICAL WARNING: [Synth 8-5413] Mix of synchronous and asynchronous control for register CONVST_reg in module FPGA_ADC_interface. [c:/FPGA_Projects/AXI_FIFO_Test/AXI_FIFO_Test.srcs/sources_1/bd/design_1/ipshared/FPGA_ADC_interface/FPGA_ADC_interface.srcs/sources_1/new/FPGA_ADC_interface.v:119]}}  -suppress 
set_msg_config  -id {Coretcl 2-1279}  -string {{CRITICAL WARNING: [Coretcl 2-1279] The upgrade of 'design_1_FPGA_ADC_interface_0_1' has identified issues that may require user intervention. Please review the upgrade log 'c:/FPGA_Projects/AXI_FIFO_Test/ip_upgrade.log', and verify that the upgraded IP is correctly configured.}}  -suppress 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.cache/wt [current_project]
set_property parent.project_path C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:cmod_a7-35t:part0:1.1 [current_project]
set_property ip_repo_paths {
  {c:/Lenovo Share}
  c:/FPGA_Projects/FPGA_ADC_interface
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_mdm_0_0/design_1_mdm_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_mdm_0_0/design_1_mdm_0_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/FPGA_ADC_interface/FPGA_ADC_interface.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/FPGA_ADC_interface/FPGA_ADC_interface.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_late.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/FPGA_ADC_interface/FPGA_ADC_interface.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/design_1_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_emc_0_0/design_1_axi_emc_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_emc_0_0/design_1_axi_emc_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_emc_0_0/design_1_axi_emc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axis_clock_converter_0_1/design_1_axis_clock_converter_0_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/design_1_ila_1_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_2_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_2_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_2_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_2_0/design_1_ila_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/design_1_axi_fifo_mm_s_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_3_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_3_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_3_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_ila_3_0/design_1_ila_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/ip/design_1_auto_ss_k_0/design_1_auto_ss_k_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/constrs_1/imports/FPGA_Projects/CmodA7_Master.xdc
set_property used_in_implementation false [get_files C:/FPGA_Projects/ADC_SRAM_UART/ADC_SRAM_UART.srcs/constrs_1/imports/FPGA_Projects/CmodA7_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
