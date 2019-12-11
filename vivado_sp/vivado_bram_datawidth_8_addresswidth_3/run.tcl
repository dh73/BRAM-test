read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=3 -generic D=8
q 
