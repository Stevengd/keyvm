#!/usr/bin/env bash

curl -LJO raw.githubusercontent.com/Stevengd/keyvm/main/host_setup.sh
curl -LJO raw.githubusercontent.com/Stevengd/keyvm/main/keyvm.tar

sudo chmod +x host_setup.sh
./host_setup.sh


