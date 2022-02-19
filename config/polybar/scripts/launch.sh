#!/usr/bin/env sh

# •• Desktop Polybar Launch

# Check device type
if [ -d /sys/class/power_supply/BAT* ]
then
    device='laptop'
else
    device='desktop'
fi
# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch bar for all available monitors
for screen in $(bspc query -M --names)
do
    polybar $device -r -c ~/.config/polybar/config.ini &
done
