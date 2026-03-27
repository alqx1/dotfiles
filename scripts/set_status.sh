#!/bin/sh

while true; do
    time="$(date +'(%H:%M:%S)')"
    dwlb -status all "$time"
    sleep 1
done
