read_verilog ../../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=11 -generic D=24
q 
