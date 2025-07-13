#!/bin/bash

for monitor in `hyprctl monitors -j | jq '.[].id'`; do
    eww open bar --screen $monitor
done
