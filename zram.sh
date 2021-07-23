#!/usr/bin/env bash
#echo lz4 > /sys/block/zram0/comp_algorithm
#echo 12G > /sys/block/zram0/disksize
#mkswap --label zram0 /dev/zram0
#swapon --priority 100 /dev/zram0
for i in {0..3}
do
    echo lz4 > /sys/block/zram$i/comp_algorithm
    echo 3G > /sys/block/zram$i/disksize
done
for i in /dev/zram*
do
    mkswap --label $i $i
    swapon --priority 100 $i
done
