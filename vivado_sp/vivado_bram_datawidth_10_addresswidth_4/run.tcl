read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=4 -generic D=10
q 
