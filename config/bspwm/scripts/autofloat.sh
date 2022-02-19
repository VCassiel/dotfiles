#!/usr/bin/env sh
#----------------
#   AUTO-FLOAT
#----------------
# Credits to: Brodie Robertson @ https://youtube.com
# -> Automatically float newly spawned nodes while running

bspc subscribe node_add | while read line
do 
    bspc node $(echo "$line" | awk '{print $5}') -t floating
done
