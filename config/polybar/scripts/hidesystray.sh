#!/usr/bin/env bash
#------------------
#   SYSTRAY TOGGLE
#------------------


barcfg="$HOME/.config/polybar/config.ini"

trayline=$(cat $barcfg | grep -n 'tray-position' | cut -f 1 -d:)
modline=$(cat $barcfg | grep -n 'module/systray' | cut -f 1 -d:)
iconline=$(($modline + 2))

if $(cat $barcfg | grep -q 'tray-position = left')
then
    sed -i "${trayline}s/left/none/; ${iconline}s///" $barcfg
elif $(cat $barcfg | grep -q 'tray-position = none')
then
    sed -i "${trayline}s/none/left/; ${iconline}s///" $barcfg
fi
