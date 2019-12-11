#!/bin/bash -x

export D=1
for n in {15..1}
do
    #if ! (($n % 2));
    #then
    	echo "Working on $n file name now"
	#D=$((1024/2**n))
    	dir="./36sp/vivado_bram_datawidth_${D}_addresswidth_${n}"
    	mkdir -p $dir
    	cp run.tcl $dir
    	sed -i "s/A=/A=${n}/g" $dir/run.tcl
    	sed -i "s/D=/D=${D}/g" $dir/run.tcl
    	cd $dir
    	vivado -mode batch -source run.tcl
	D=$(($n*2))
    	cd ../../
   #fi
done

