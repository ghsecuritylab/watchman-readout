
####################################################################################
# Generated by Vivado 2018.2 built on 'Thu Jun 14 20:02:38 MDT 2018' by 'xbuild'
# Command Used: write_xdc -exclude_physical /home/idlab-52/salvador_fork/timing_constraints.xdc
####################################################################################


####################################################################################
# Constraints from file : 'base_zynq_processing_system7_0_0.xdc'
####################################################################################

current_instance base_zynq_i/processing_system7_0/inst
create_clock -period 10.000 -name clk_fpga_0 [get_pins {PS7_i/FCLKCLK[0]}]
set_input_jitter clk_fpga_0 0.300

####################################################################################
# Constraints from file : 'base_zynq_rst_ps7_0_50M_0.xdc'
####################################################################################

current_instance -quiet
current_instance base_zynq_i/rst_ps7_0_50M/U0
set_false_path -to [get_pins -hier *cdc_to*/D]

####################################################################################
# Constraints from file : 'base_zynq_axi_dma_0_0.xdc'
####################################################################################

current_instance -quiet
current_instance base_zynq_i/axi_dma_0/U0
set_false_path -to [get_pins -hier *cdc_to*/D]

####################################################################################
# Constraints from file : 'Timing.xdc'
####################################################################################

current_instance -quiet
set_false_path -from [get_clocks *] -to [get_cells -hierarchical *cdc_reg*]
set_false_path -from [get_clocks *] -to [get_pins -hierarchical -filter Name=~*DFF_AB/Q_reg/D]

####################################################################################
# Constraints from file : 'xpm_cdc_async_rst.tcl'
####################################################################################

current_instance base_zynq_i/axi_interconnect_0/s00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst
set_false_path -through [get_ports -scoped_to_current_instance src_arst] -to [all_registers]
current_instance -quiet
current_instance base_zynq_i/axi_interconnect_0/s00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst
set_false_path -through [get_ports -scoped_to_current_instance src_arst] -to [all_registers]

####################################################################################
# Constraints from file : 'xpm_cdc_gray.tcl'
####################################################################################

current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/CPU_CONTROLLER_inst/DIG_STO_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/CPU_CONTROLLER_inst/DIG_STO_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_Time_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/RDAD_STO_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/RDAD_STO_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_Trig_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_Trig_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_WdoAddr_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_WdoAddr_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_Time_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_CMD_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
current_instance -quiet
current_instance base_zynq_i/TARGET_C_TopLevel_Sy_0/U0/TC_RoundBuffer/WDOSTORE/AXI_CMD_AFIFO/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 8.000

# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet
