onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ace_ccu_top/i_ccu_dut/i_ccu_top/fsm/state_q
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[3]/i_axi_demux/slv_aw_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[3]/i_axi_demux/slv_ar_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[2]/i_axi_demux/slv_aw_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[2]/i_axi_demux/slv_ar_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[1]/i_axi_demux/slv_aw_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[1]/i_axi_demux/slv_ar_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[0]/i_axi_demux/slv_aw_select_i}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/gen_slv_port_demux[0]/i_axi_demux/slv_ar_select_i}
add wave -noupdate /tb_ace_ccu_top/i_ccu_dut/i_ccu_top/fsm/ccu_req_i.ar.snoop
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/fsm/m2s_resp_i[3].cr_resp}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/fsm/m2s_resp_i[2].cr_resp}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/fsm/m2s_resp_i[1].cr_resp}
add wave -noupdate {/tb_ace_ccu_top/i_ccu_dut/i_ccu_top/fsm/m2s_resp_i[0].cr_resp}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 299
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {954204160 ps}
