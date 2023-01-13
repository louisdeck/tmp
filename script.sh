#!/bin/bash

echo "Starting recon."

for i in {1..255}
do
    for j in {0..255}
    do
        nmap -sn -e eth1 -S 10.128.$i.$j 10.16.$i.$j
    done
done

echo "Ending recon."
