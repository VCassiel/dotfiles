#!/usr/bin/env bash
#------------------
#   SENSITIVITY
#------------------


idlist=$(xinput list | grep pointer | cut -f 2 -d= | awk '{print $1}')

for device in ${idlist[@]}
do
    if $(xinput list-props $device | grep -q 'Accel Speed')
    then
        prop=$(xinput list-props $device | grep 'Accel Speed' | head -n 1)
        propid=$(echo $prop | sed 's/.*(\(.*\))/\1/' | cut -f 1 -d:)
        xinput set-prop $device $propid -0.9
    fi
done
