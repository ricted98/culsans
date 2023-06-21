read_vhdl {../modules/cva6/corev_apu/fpga/src/apb_uart/src/apb_uart.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/uart_transmitter.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/uart_interrupt.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_mv_filter.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_input_filter.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_counter.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/uart_receiver.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_edge_detect.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_input_sync.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_clock_div.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/slib_fifo.vhd ../modules/cva6/corev_apu/fpga/src/apb_uart/src/uart_baudgen.vhd}
read_verilog -sv {../modules/cva6/common/submodules/common_cells/src/cf_math_pkg.sv ../modules/cva6/common/submodules/common_cells/src/cb_filter_pkg.sv}
read_verilog -sv {../modules/cva6/core/include/cv64a6_imafdc_sv39_config_pkg.sv ../modules/cva6/core/include/riscv_pkg.sv ../modules/cva6/corev_apu/riscv-dbg/src/dm_pkg.sv ../modules/cva6/core/include/ariane_pkg.sv ../modules/cva6/core/include/ariane_rvfi_pkg.sv ../modules/cva6/core/include/wt_cache_pkg.sv ../modules/cva6/core/include/cvxif_pkg.sv ../modules/cva6/corev_apu/register_interface/src/reg_intf.sv ../modules/cva6/corev_apu/tb/rvfi_pkg.sv ../modules/cva6/core/include/ariane_axi_pkg.sv ../modules/cva6/core/include/ariane_ace_pkg.sv ../modules/cva6/core/include/std_cache_pkg.sv ../modules/cva6/core/fpu/src/fpnew_pkg.sv ../modules/cva6/core/cvxif_example/include/cvxif_instr_pkg.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/defs_div_sqrt_mvp.sv ../modules/cva6/corev_apu/tb/ariane_soc_pkg.sv}
read_verilog -sv {../modules/cva6/corev_apu/axi//src/axi_pkg.sv ../modules/cva6/corev_apu/axi//src/ace_pkg.sv ../modules/cva6/corev_apu/axi//src/snoop_pkg.sv ../modules/cva6/corev_apu/axi//src/ccu_pkg.sv}
read_verilog -sv {../modules/axi_llc/src/axi_llc_pkg.sv ../modules/axi_llc/src/axi_llc_reg_pkg.sv}
read_verilog -sv {../rtl/include/culsans_pkg.sv}
read_verilog -sv {../modules/cva6/common/submodules/common_cells/src/rstgen_bypass.sv ../modules/cva6/common/submodules/common_cells/src/rstgen.sv ../modules/cva6/common/submodules/common_cells/src/stream_mux.sv ../modules/cva6/common/submodules/common_cells/src/stream_demux.sv ../modules/cva6/common/submodules/common_cells/src/exp_backoff.sv ../modules/cva6/common/submodules/common_cells/src/addr_decode.sv ../modules/cva6/common/submodules/common_cells/src/stream_register.sv ../modules/cva6/common/submodules/common_cells/src/unread.sv ../modules/cva6/common/submodules/common_cells/src/sync.sv ../modules/cva6/common/submodules/common_cells/src/cdc_2phase.sv ../modules/cva6/common/submodules/common_cells/src/spill_register_flushable.sv ../modules/cva6/common/submodules/common_cells/src/spill_register.sv ../modules/cva6/common/submodules/common_cells/src/sync_wedge.sv ../modules/cva6/common/submodules/common_cells/src/edge_detect.sv ../modules/cva6/common/submodules/common_cells/src/stream_arbiter.sv ../modules/cva6/common/submodules/common_cells/src/stream_arbiter_flushable.sv ../modules/cva6/common/submodules/common_cells/src/deprecated/fifo_v1.sv ../modules/cva6/common/submodules/common_cells/src/deprecated/fifo_v2.sv ../modules/cva6/common/submodules/common_cells/src/fifo_v3.sv ../modules/cva6/common/submodules/common_cells/src/lzc.sv ../modules/cva6/common/submodules/common_cells/src/popcount.sv ../modules/cva6/common/submodules/common_cells/src/rr_arb_tree.sv ../modules/cva6/common/submodules/common_cells/src/deprecated/rrarbiter.sv ../modules/cva6/common/submodules/common_cells/src/stream_delay.sv ../modules/cva6/common/submodules/common_cells/src/lfsr.sv ../modules/cva6/common/submodules/common_cells/src/lfsr_8bit.sv ../modules/cva6/common/submodules/common_cells/src/lfsr_16bit.sv ../modules/cva6/common/submodules/common_cells/src/delta_counter.sv ../modules/cva6/common/submodules/common_cells/src/counter.sv ../modules/cva6/common/submodules/common_cells/src/shift_reg.sv ../modules/cva6/common/submodules/common_cells/src/cb_filter.sv ../modules/cva6/common/submodules/common_cells/src/sub_per_hash.sv ../modules/cva6/common/submodules/common_cells/src/stream_fifo.sv ../modules/cva6/common/submodules/common_cells/src/stream_xbar.sv ../modules/cva6/common/submodules/common_cells/src/onehot_to_bin.sv}
read_verilog -sv {../modules/cva6/core/include/instr_tracer_pkg.sv ../modules/cva6/common/local/util/instr_tracer_if.sv ../modules/cva6/common/local/util/instr_tracer.sv ../modules/cva6/corev_apu/tb/common/mock_uart.sv ../modules/cva6/common/local/util/sram.sv}
read_verilog -sv {../modules/cva6/core/cvxif_example/include/cvxif_instr_pkg.sv ../modules/cva6/core/cvxif_example/cvxif_example_coprocessor.sv ../modules/cva6/core/cvxif_example/instr_decoder.sv}
read_verilog -sv {../modules/cva6/core/ariane.sv ../modules/cva6/core/serdiv.sv ../modules/cva6/core/issue_stage.sv ../modules/cva6/core/id_stage.sv ../modules/cva6/core/branch_unit.sv ../modules/cva6/core/ariane_regfile_ff.sv ../modules/cva6/core/dromajo_ram.sv ../modules/cva6/core/controller.sv ../modules/cva6/core/commit_stage.sv ../modules/cva6/core/re_name.sv ../modules/cva6/core/csr_buffer.sv ../modules/cva6/core/decoder.sv ../modules/cva6/core/scoreboard.sv ../modules/cva6/core/perf_counters.sv ../modules/cva6/core/store_unit.sv ../modules/cva6/core/lsu_bypass.sv ../modules/cva6/core/axi_adapter.sv ../modules/cva6/core/fpu_wrap.sv ../modules/cva6/core/csr_regfile.sv ../modules/cva6/core/load_store_unit.sv ../modules/cva6/core/cvxif_fu.sv ../modules/cva6/core/multiplier.sv ../modules/cva6/core/store_buffer.sv ../modules/cva6/core/compressed_decoder.sv ../modules/cva6/core/axi_shim.sv ../modules/cva6/core/alu.sv ../modules/cva6/core/instr_realign.sv ../modules/cva6/core/ex_stage.sv ../modules/cva6/core/cva6.sv ../modules/cva6/core/amo_buffer.sv ../modules/cva6/core/mult.sv ../modules/cva6/core/load_unit.sv ../modules/cva6/core/issue_read_operands.sv ../modules/cva6/core/fpu/src/fpnew_fma.sv ../modules/cva6/core/fpu/src/fpnew_opgroup_fmt_slice.sv ../modules/cva6/core/fpu/src/fpnew_divsqrt_multi.sv ../modules/cva6/core/fpu/src/fpnew_fma_multi.sv ../modules/cva6/core/fpu/src/fpnew_opgroup_multifmt_slice.sv ../modules/cva6/core/fpu/src/fpnew_classifier.sv ../modules/cva6/core/fpu/src/fpnew_noncomp.sv ../modules/cva6/core/fpu/src/fpnew_cast_multi.sv ../modules/cva6/core/fpu/src/fpnew_opgroup_block.sv ../modules/cva6/core/fpu/src/fpnew_rounding.sv ../modules/cva6/core/fpu/src/fpnew_top.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv ../modules/cva6/core/fpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv ../modules/cva6/core/frontend/frontend.sv ../modules/cva6/core/frontend/instr_scan.sv ../modules/cva6/core/frontend/instr_queue.sv ../modules/cva6/core/frontend/bht.sv ../modules/cva6/core/frontend/btb.sv ../modules/cva6/core/frontend/ras.sv ../modules/cva6/core/cache_subsystem/tag_cmp.sv ../modules/cva6/core/cache_subsystem/wt_dcache_ctrl.sv ../modules/cva6/core/cache_subsystem/amo_alu.sv ../modules/cva6/core/cache_subsystem/wt_axi_adapter.sv ../modules/cva6/core/cache_subsystem/std_nbdcache.sv ../modules/cva6/core/cache_subsystem/cache_ctrl.sv ../modules/cva6/core/cache_subsystem/snoop_cache_ctrl.sv ../modules/cva6/core/cache_subsystem/miss_handler.sv ../modules/cva6/core/cache_subsystem/std_cache_subsystem.sv ../modules/cva6/core/cache_subsystem/wt_dcache_missunit.sv ../modules/cva6/core/cache_subsystem/cva6_icache.sv ../modules/cva6/core/cache_subsystem/wt_dcache_wbuffer.sv ../modules/cva6/core/cache_subsystem/wt_dcache.sv ../modules/cva6/core/cache_subsystem/wt_l15_adapter.sv ../modules/cva6/core/cache_subsystem/wt_dcache_mem.sv ../modules/cva6/core/cache_subsystem/wt_cache_subsystem.sv ../modules/cva6/core/cache_subsystem/cva6_icache_axi_wrapper.sv ../modules/cva6/corev_apu/bootrom/bootrom.sv ../modules/cva6/corev_apu/bootrom/dromajo_bootrom.sv ../modules/cva6/corev_apu/clint/axi_lite_interface.sv ../modules/cva6/corev_apu/clint/clint.sv ../modules/cva6/corev_apu/fpga/src/axi2apb/src/axi2apb_wrap.sv ../modules/cva6/corev_apu/fpga/src/axi2apb/src/axi2apb.sv ../modules/cva6/corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv ../modules/cva6/corev_apu/fpga/src/apb_timer/apb_timer.sv ../modules/cva6/corev_apu/fpga/src/apb_timer/timer.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_slice_wrap.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_slice.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv ../modules/cva6/corev_apu/fpga/src/axi_slice/src/axi_aw_buffer.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_amos.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_atomics.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_res_tbl.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_lrsc_wrap.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_amos_alu.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_lrsc.sv ../modules/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_atomics_wrap.sv ../modules/cva6/corev_apu/axi_mem_if/src/axi2mem.sv ../modules/cva6/core/pmp/src/pmp_entry.sv ../modules/cva6/core/pmp/src/pmp.sv ../modules/cva6/core/cvxif_example/cvxif_example_coprocessor.sv ../modules/cva6/core/cvxif_example/instr_decoder.sv ../modules/cva6/core/mmu_sv39/tlb.sv ../modules/cva6/core/mmu_sv39/mmu.sv ../modules/cva6/core/mmu_sv39/ptw.sv ../modules/cva6/corev_apu/rv_plic/rtl/rv_plic_target.sv ../modules/cva6/corev_apu/rv_plic/rtl/rv_plic_gateway.sv ../modules/cva6/corev_apu/rv_plic/rtl/plic_regmap.sv ../modules/cva6/corev_apu/rv_plic/rtl/plic_top.sv ../modules/cva6/corev_apu/rv_plic/rtl/prim_subreg.sv ../modules/cva6/corev_apu/riscv-dbg/src/dmi_cdc.sv ../modules/cva6/corev_apu/riscv-dbg/src/dmi_jtag.sv ../modules/cva6/corev_apu/riscv-dbg/src/dmi_jtag_tap.sv ../modules/cva6/corev_apu/riscv-dbg/src/dm_csrs.sv ../modules/cva6/corev_apu/riscv-dbg/src/dm_mem.sv ../modules/cva6/corev_apu/riscv-dbg/src/dm_sba.sv ../modules/cva6/corev_apu/riscv-dbg/src/dm_top.sv ../modules/cva6/corev_apu/riscv-dbg/debug_rom/debug_rom.sv ../modules/cva6/corev_apu/register_interface/src/apb_to_reg.sv ../modules/cva6/corev_apu/src/tech_cells_generic/src/deprecated/cluster_clk_cells.sv ../modules/cva6/corev_apu/src/tech_cells_generic/src/deprecated/pulp_clk_cells.sv ../modules/cva6/common/local/util/tc_sram_wrapper.sv ../modules/cva6/corev_apu/src/tech_cells_generic/src/rtl/tc_sram.sv ../modules/cva6/corev_apu/src/tech_cells_generic/src/rtl/tc_clk.sv ../modules/cva6/corev_apu/tb/rvfi_tracer.sv ../modules/cva6/corev_apu/tb/common/uart.sv}
read_verilog -sv {../modules/cva6/corev_apu/axi//src/axi_cut.sv ../modules/cva6/corev_apu/axi//src/axi_join.sv ../modules/cva6/corev_apu/axi//src/axi_delayer.sv ../modules/cva6/corev_apu/axi//src/axi_to_axi_lite.sv ../modules/cva6/corev_apu/axi//src/axi_id_prepend.sv ../modules/cva6/corev_apu/axi//src/axi_atop_filter.sv ../modules/cva6/corev_apu/axi//src/axi_err_slv.sv ../modules/cva6/corev_apu/axi//src/axi_mux.sv ../modules/cva6/corev_apu/axi//src/axi_demux.sv ../modules/cva6/corev_apu/axi//src/axi_multicut.sv ../modules/cva6/corev_apu/axi//src/axi_intf.sv ../modules/cva6/corev_apu/axi//src/ace_intf.sv ../modules/cva6/corev_apu/axi//src/snoop_intf.sv ../modules/cva6/corev_apu/axi//src/axi_isolate.sv ../modules/cva6/corev_apu/axi//src/axi_xbar.sv ../modules/cva6/corev_apu/axi//src/ace_trs_dec.sv ../modules/cva6/corev_apu/axi//src/ccu_fsm.sv ../modules/cva6/corev_apu/axi//src/ace_ccu_top.sv}
read_verilog -sv {../modules/axi_llc/src/axi_llc_burst_cutter.sv ../modules/axi_llc/src/axi_llc_data_way.sv ../modules/axi_llc/src/axi_llc_merge_unit.sv ../modules/axi_llc/src/axi_llc_read_unit.sv ../modules/axi_llc/src/axi_llc_reg_top.sv ../modules/axi_llc/src/axi_llc_write_unit.sv ../modules/axi_llc/src/eviction_refill/axi_llc_ax_master.sv ../modules/axi_llc/src/eviction_refill/axi_llc_r_master.sv ../modules/axi_llc/src/eviction_refill/axi_llc_w_master.sv ../modules/axi_llc/src/hit_miss_detect/axi_llc_evict_box.sv ../modules/axi_llc/src/hit_miss_detect/axi_llc_lock_box_bloom.sv ../modules/axi_llc/src/hit_miss_detect/axi_llc_miss_counters.sv ../modules/axi_llc/src/hit_miss_detect/axi_llc_tag_pattern_gen.sv ../modules/axi_llc/src/axi_llc_chan_splitter.sv ../modules/axi_llc/src/axi_llc_evict_unit.sv ../modules/axi_llc/src/axi_llc_refill_unit.sv ../modules/axi_llc/src/axi_llc_ways.sv ../modules/axi_llc/src/hit_miss_detect/axi_llc_tag_store.sv ../modules/axi_llc/src/axi_llc_config.sv ../modules/axi_llc/src/axi_llc_hit_miss.sv ../modules/axi_llc/src/axi_llc_top.sv ../modules/axi_llc/src/axi_llc_reg_wrap.sv}
read_verilog -sv {../rtl/src/culsans_peripherals.sv ../rtl/src/culsans_xilinx.sv ../rtl/src/culsans_top.sv ../rtl/src/culsans_test.sv}
read_verilog -sv {../modules/cva6/corev_apu/fpga/src/ariane_peripherals_xilinx.sv ../modules/cva6/corev_apu/fpga/src/fan_ctrl.sv ../modules/cva6/corev_apu/fpga/src/ariane_xilinx.sv ../modules/cva6/corev_apu/fpga/src/bootrom/bootrom_32.sv ../modules/cva6/corev_apu/fpga/src/bootrom/bootrom_64.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/ssio_ddr_in.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/rgmii_soc.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/eth_mac_1g_rgmii.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/axis_gmii_rx.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/oddr.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/axis_gmii_tx.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/dualmem_widen8.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/rgmii_phy_if.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/dualmem_widen.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/rgmii_lfsr.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/rgmii_core.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/eth_mac_1g.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/eth_mac_1g_rgmii_fifo.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/iddr.sv ../modules/cva6/corev_apu/fpga/src/ariane-ethernet/framing_top.sv ../modules/cva6/corev_apu/src/tech_cells_generic/src/fpga/tc_sram_xilinx.sv ../modules/cva6/common/local/util/tc_sram_xilinx_wrapper.sv}
