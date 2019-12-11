read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=5 -generic D=12
q 
