#!/bin/sh

case $1 in
    up)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
    ;;

    down)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    ;;

    toggle_mute)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    ;;
esac
