#!/bin/bash

laptop_monitor="eDP-1"
laptop_monitor_init="1920x1080@60, 0x0, 1.5"
other_monitor="HDMI-A-1"
other_monitor_init="1920x1080@239.96, auto-left, 1"

if hyprctl monitors | grep -q "HDMI"; then
    case "$1" in
        on)
            hyprctl keyword monitor "$laptop_monitor, disable"
            hyprctl keyword monitor "$other_monitor, $other_monitor_init"
            ;;
        off)
            hyprctl keyword monitor "$laptop_monitor, $laptop_monitor_init"
            hyprctl keyword monitor "$other_monitor, $other_monitor_init"
            ;;
    esac
fi

