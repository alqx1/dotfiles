#!/bin/sh

export XDG_CURRENT_DESKTOP=wlroots
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=wlroots

export LIBVA_DRIVER_NAME=nvidia
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export GBM_BACKEND=nvidia-drm
export __GL_GSYNC_ALLOWED=0
export __GL_VRR_ALLOWED=0

dbus-run-session dwl -s /home/alex/scripts/autostart.sh
