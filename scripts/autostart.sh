#!/bin/sh

# Kill already running duplicate process
_ps="pipewire pipewire-pulse way-displays swww-daemon dwlb"
for _prs in $_ps; do
    if [ "$(pidof "${_prs}")" ]; then
         killall -9 "${_prs}" 2>/dev/null
    fi
 done

pipewire &
pipewire-pulse &
way-displays &
swww-daemon &

~/scripts/set_time.sh &

sleep 1 && swww img ~/other/Images/hard-seal-3.jpg &

dwlb
