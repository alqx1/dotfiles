#!/bin/sh

# Kill already running duplicate process
_ps="pipewire pipewire-pulse wireplumber way-displays swww-daemon"
for _prs in $_ps; do
    if [ "$(pidof "${_prs}")" ]; then
         killall -9 "${_prs}"
    fi
 done

pipewire &
pipewire-pulse &
wireplumber &
way-displays &
swww-daemon &

swww img ~/other/Images/hard-seal-3.jpg
