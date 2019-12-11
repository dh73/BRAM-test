read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=8 -generic D=4
q 
