#!/bin/bash

while true; do
    printf -v now '%(%H:%M:%S)T' -1
    dwlb -status all "$now"
    sleep 1
done
