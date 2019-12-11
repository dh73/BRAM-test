read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=2 -generic D=6
q 
