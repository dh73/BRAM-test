read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=4 -generic D=64
q 
