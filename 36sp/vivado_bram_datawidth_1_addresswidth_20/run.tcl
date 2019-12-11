read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=20 -generic D=1
q 
