#!/usr/bin/env bash
#------------------
#   SYSTRAY TOGGLE
#------------------


barcfg="$HOME/.config/polybar/config.ini"
barmod="$HOME/.config/polybar/modules.ini"

trayline=$(grep -n 'tray-position' $barcfg | cut -f 1 -d:)
modline=$(grep -n 'module/systray' $barmod | cut -f 1 -d:)
iconline=$(($modline + 2))

if $(grep -q 'tray-position = left' $barcfg)
then
    sed -i "${iconline}s///" $barmod
    sed -i "${trayline}s/left/none/" $barcfg
elif $(grep -q 'tray-position = none' $barcfg)
then
    sed -i "${iconline}s///" $barmod
    sed -i "${trayline}s/none/left/" $barcfg
fi
