
cp -f D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_AC_ROM.hex ./
cp -f D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_inst_ROM.hex ./
cp -f D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_sequencer_mem.hex ./

vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_avalon_st_adapter_error_adapter_0.sv"          -work error_adapter_0                 
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_avalon_st_adapter.vhd"                         -work avalon_st_adapter               
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_handshake_clock_crosser.v"                             -work crosser                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_clock_crosser.v"                                       -work crosser                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_pipeline_base.v"                                       -work crosser                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_std_synchronizer_nocut.v"                                        -work crosser                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_rsp_mux.sv"                                    -work rsp_mux                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_arbitrator.sv"                                            -work rsp_mux                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_rsp_demux.sv"                                  -work rsp_demux                       
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_cmd_mux.sv"                                    -work cmd_mux                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_arbitrator.sv"                                            -work cmd_mux                         
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_cmd_demux_001.sv"                              -work cmd_demux_001                   
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_cmd_demux.sv"                                  -work cmd_demux                       
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_router_002.sv"                                 -work router_002                      
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1_router.sv"                                     -work router                          
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_master_translator.sv"                                     -work dmaster_master_translator       
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster_p2b_adapter.sv"                                          -work p2b_adapter                     
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster_b2p_adapter.sv"                                          -work b2p_adapter                     
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_packets_to_master.v"                                      -work transacto                       
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_packets_to_bytes.v"                                    -work p2b                             
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_bytes_to_packets.v"                                    -work b2p                             
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_sc_fifo.v"                                                -work fifo                            
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster_timing_adt.sv"                                           -work timing_adt                      
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_jtag_interface.v"                                      -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_jtag_dc_streaming.v"                                             -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_jtag_sld_node.v"                                                 -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_jtag_streaming.v"                                                -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_clock_crosser.v"                                       -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_std_synchronizer_nocut.v"                                        -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_pipeline_base.v"                                       -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_idle_remover.v"                                        -work jtag_phy_embedded_in_jtag_master
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_idle_inserter.v"                                       -work jtag_phy_embedded_in_jtag_master
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_st_pipeline_stage.sv"                                     -work jtag_phy_embedded_in_jtag_master
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_mm_interconnect_1.vhd"                                           -work mm_interconnect_1               
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_mm_interconnect_1_s0_seq_debug_agent_rsp_fifo.vhd"               -work mm_interconnect_1               
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_mm_interconnect_1_s0_seq_debug_agent_rdata_fifo.vhd"             -work mm_interconnect_1               
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_simple_avalon_mm_bridge.sv"                               -work seq_bridge                      
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_dll_cyclonev.sv"                                          -work dll0                            
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_oct_cyclonev.sv"                                          -work oct0                            
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_hard_memory_controller_top_cyclonev.sv"                   -work c0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_dmaster.vhd"                                                     -work dmaster                         
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0.vhd"                                                          -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_seq_bridge.vhd"                                               -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_trk_mm_bridge.vhd"                                            -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_avalon_mm_bridge.v"                                              -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst.v"                          -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_cpu_cv_sim_cpu_inst_test_bench.v"               -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                         -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_sequencer_rst.sv"                                         -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_mem_if_simple_avalon_mm_bridge.sv"                               -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altera_merlin_arbitrator.sv"                                            -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_irq_mapper.sv"                                                -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0.vhd"                                        -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_avalon_st_adapter.vhd"                      -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"       -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux.sv"                               -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux_001.sv"                           -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux_002.sv"                           -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_demux_003.sv"                           -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_mux.sv"                                 -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_mux_002.sv"                             -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_cmd_mux_003.sv"                             -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_cpu_inst_data_master_translator.vhd"        -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_cpu_inst_instruction_master_translator.vhd" -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_hphy_bridge_s0_translator.vhd"              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router.sv"                                  -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_001.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_002.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_003.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_004.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_005.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_007.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_008.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_009.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_router_010.sv"                              -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_demux_002.sv"                           -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_mux.sv"                                 -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_mux_001.sv"                             -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_s0_mm_interconnect_0_rsp_mux_002.sv"                             -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_mem_s1_translator.vhd"            -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_reg_file_inst_avl_translator.vhd" -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_scc_mgr_inst_avl_translator.vhd"  -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trkm_translator.vhd" -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trks_translator.vhd" -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_seq_bridge_m0_translator.vhd"               -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_trk_mm_bridge_m0_translator.vhd"            -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/lpddr2_s0_mm_interconnect_0_trk_mm_bridge_s0_translator.vhd"            -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_reg_file.sv"                                                  -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_acv_phase_decode.v"                                       -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_acv_wrapper.sv"                                           -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_mgr.sv"                                                   -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_reg_file.v"                                               -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_siii_phase_decode.v"                                      -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_siii_wrapper.sv"                                          -work s0                              
vlogan +v2k           "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_sv_phase_decode.v"                                        -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_scc_sv_wrapper.sv"                                            -work s0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/sequencer_trk_mgr.sv"                                                   -work s0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_p0.vho"                                                          -work p0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_p0_altdqdqs.vhd"                                                 -work p0                              
vlogan +v2k -sverilog "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/altdq_dqs2_acv_connect_to_hard_phy_cyclonev_lpddr2.sv"                  -work p0                              
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_pll0.vho"                                                        -work pll0                            
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_pll0_sim_delay.vhd"                                              -work pll0                            
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2/LPDDR2_0002.vhd"                                                        -work LPDDR2                          
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/LPDDR2_sim/LPDDR2.vhd"                                                                                                          
vhdlan -xlrm          "D:/intelFPGA_lite/Workspace/SDRAM/pll_sim/pll.vho"                                                                                                                
