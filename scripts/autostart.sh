#!/bin/sh

# Kill already running duplicate process
_ps="pipewire pipewire-pulse wireplumber way-displays swww-daemon dwlb"
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

~/scripts/set_status.sh &
sleep 1 & swww img ~/other/images/hard-seal-3.jpg &

dwlb
