#!/bin/bash -x

export D=1
for n in {10..1}
do
    #if ! (($n % 2));
    #then
        echo "Working on $n file name now"
        #D=$((1024/2**n))
        dir="./sdp/vivado_bram_sdp_datawidth_${D}_addresswidth_${n}"
        mkdir -p $dir
        cp run_sdp.tcl $dir/run.tcl
        sed -i "s/A=/A=${n}/g" $dir/run.tcl
        sed -i "s/D=/D=${D}/g" $dir/run.tcl
        cd $dir
        vivado -mode batch -source run.tcl
	D=$(($D*2))
        cd ../../
   #fi
done

