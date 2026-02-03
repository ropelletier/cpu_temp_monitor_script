#!/bin/bash
apt update && sudo apt install lm-sensors -y
mkdir /scripts
cp cpu_temp_monitor.sh /scripts
chmod +x /scripts/cpu_temp_monitor.sh
