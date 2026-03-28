#!/bin/sh

case $1 in
    up)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
    ;;

    down)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    ;;

    volume_toggle)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    ;;

    mic_toggle)
        wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
    ;;
esac
