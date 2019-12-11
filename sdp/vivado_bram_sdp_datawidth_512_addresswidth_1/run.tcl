read_verilog ../../rams_sdp_rf.v
synth_design -top rams_sdp_rf -generic A=1 -generic D=512
q 
