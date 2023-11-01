#!/bin/bash
#
#echo" echo 3 > /proc/sys/vm/drop_caches
#sync; echo 3 > /proc/sys/vm/drop_caches
sudo sh -c "sync; echo 1 > /proc/sys/vm/drop_caches"
sudo sh -c "sync; echo 2 > /proc/sys/vm/drop_caches"
echo -e "\n *** Clear CPU PageCache *** \n"
