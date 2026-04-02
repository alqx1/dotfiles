#!/bin/bash

swww img "$(find ~/other/wallpapers -name "*.*" | shuf -n 1)" -t=none --resize stretch
