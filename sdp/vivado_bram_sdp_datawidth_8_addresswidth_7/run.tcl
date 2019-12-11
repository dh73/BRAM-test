read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=7 -generic D=8
q 
