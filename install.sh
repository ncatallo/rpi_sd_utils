#!/bin/bash

# Getting pi shrinker script
wget  https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
chmod +x pishrink.sh

# Saving script and installing on the machine
cp pishrink.sh ./scripts
sudo mv pishrink.sh /usr/local/bin

# Putting util script to /usr/local/bin
sudo cp rpiSdUtils.sh /usr/local/bin
