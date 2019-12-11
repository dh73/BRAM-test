read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=8 -generic D=18
q 
