read_verilog ../../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=9 -generic D=20
q 
