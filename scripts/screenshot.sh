#!/bin/sh

case $1 in
    copy)
        grim -g "$(slurp)" - | wl-copy
    ;;

    save)
        grim -g "$(slurp)" "$HOME/other/screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"
    ;;
esac
