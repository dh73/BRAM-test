read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=6 -generic D=16
q 
