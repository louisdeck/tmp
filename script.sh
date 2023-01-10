#!/bin/bash

# 10.128.10.100/12
# 10.16.0.0/16

echo "Starting recon."

for i in {0..255}
do
    for j in {0..255}
    do
        #echo "10.128.$i.$j"
        nmap -sn -e eth1 -S 10.128.$i.$j 10.16.$i.$j
    done
done

echo "Ending recon."
