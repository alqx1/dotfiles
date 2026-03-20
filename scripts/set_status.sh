#!/bin/sh

while true; do
    time="$(date +'(%H:%M:%S)')"
    bat="$(cat /sys/class/power_supply/BAT1/capacity)%"
    dwlb -status all "$bat | $time"
    sleep 1
done
