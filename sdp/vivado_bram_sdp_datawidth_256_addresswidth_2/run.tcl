read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=2 -generic D=256
q 
