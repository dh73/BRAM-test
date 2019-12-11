read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=6 -generic D=14
q 
