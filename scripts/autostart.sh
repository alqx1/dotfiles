#!/bin/sh

# Kill already running duplicate process
_ps="pipewire pipewire-pulse way-displays swww-daemon quickshell xwaylandbridge otd-daemon"
for _prs in $_ps; do
    if [ "$(pidof "${_prs}")" ]; then
        killall -9 "${_prs}"
    fi
done

for _prs in $_ps; do
    $_prs &
done

# eval $(gnome-keyring-daemon --start --components=secrets)
# dbus-update-activation-environment --all

~/scripts/wallpaper.sh &
