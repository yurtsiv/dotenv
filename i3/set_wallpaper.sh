#!bin/bash

file=$(find ~/Pictures/wallpapers -type f | shuf -n1)

feh --bg-scale $file
