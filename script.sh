#!/bin/bash

echo "Starting recon."

for i in {0..255}
do
    for j in {0..255}
    do
        nmap -T1 -sn -e eth1 --send-ip -S 10.128.$i.$j 10.16.$i.$j
    done
done

echo "Ending recon."
