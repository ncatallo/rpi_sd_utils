#!/bin/bash

# Getting pi shrinker script
wget  https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh

# Saving script and installing on the machine
chmod +x pishrink.sh
sudo cp pishrink.sh /usr/local/bin

# Putting util script to /usr/local/bin
chmod +x rpiSdUtils.sh
sudo cp rpiSdUtils.sh /usr/local/bin
