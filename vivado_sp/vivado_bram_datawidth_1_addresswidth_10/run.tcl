read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=10 -generic D=1
q 
