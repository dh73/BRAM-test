read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=10 -generic D=1
q 
