read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=9 -generic D=2
q 
