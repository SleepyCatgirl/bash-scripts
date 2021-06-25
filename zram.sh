#!/usr/bin/env bash
echo lz4 > /sys/block/zram0/comp_algorithm
echo 12G > /sys/block/zram0/disksize
mkswap --label zram0 /dev/zram0
swapon --priority 100 /dev/zram0
