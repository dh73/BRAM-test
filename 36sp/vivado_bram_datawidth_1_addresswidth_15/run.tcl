read_verilog ../../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=15 -generic D=1
q 
