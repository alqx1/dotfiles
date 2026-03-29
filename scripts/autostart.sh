#!/bin/sh

# Kill already running duplicate process
_ps="pipewire pipewire-pulse wireplumber way-displays swww-daemon quickshell"
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
quickshell &

~/scripts/set_status.sh &
sleep 1 & swww img -t=none  ~/other/images/hard-seal-3.jpg &

