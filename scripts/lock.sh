#!/bin/bash

random=$(find ~/other/wallpapers -name "*.*" | shuf -n 1)
swaylock --image $random --scaling stretch
