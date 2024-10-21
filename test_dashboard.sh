#!/bin/bash

NUM_CORES=$(nproc)

echo "Detected $NUM_CORES CPU cores."
echo "Applying load to $NUM_CORES CPUs at approximately 80% usage."
sudo stress-ng --cpu "$NUM_CORES" --cpu-load 80 --timeout 30

echo "Load applied. Check the Netdata dashboard to observe the changes."
