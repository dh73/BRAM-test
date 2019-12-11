read_verilog ../rams_sp_rf.v
synth_design -top rams_sp_rf -generic A=1 -generic D=4
q 
