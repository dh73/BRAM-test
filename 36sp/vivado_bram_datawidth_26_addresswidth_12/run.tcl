read_verilog ../../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=12 -generic D=26
q 
