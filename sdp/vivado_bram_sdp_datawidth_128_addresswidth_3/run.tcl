read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=3 -generic D=128
q 
