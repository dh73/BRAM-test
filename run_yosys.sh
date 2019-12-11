#!/bin/bash -x

export D=1
for n in {10..1}
do
    #if ! (($n % 2));
    #then
    	echo "Working on $n file name now"
	#D=$((1024/2**n))
    	dir="./yosys/sdp18/yosys_bram_datawidth_${D}_addresswidth_${n}"
    	mkdir -p $dir
    	cp run.ys $dir
    	sed -i "s/A\ /A\ ${n}/g" $dir/run.ys
    	sed -i "s/D\ /D\ ${D}/g" $dir/run.ys
    	cd $dir
    	yosys -s run.ys | tee yosys_bram_datawidth_${D}_addresswidth_${n}.log
	D=$(($n*2))
    	cd ../../../
   #fi
done

