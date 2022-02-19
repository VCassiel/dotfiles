#!/usr/bin/env bash


username=$(getent passwd | grep "$(whoami)" | cut -f 5 -d:)
updates=$(paru -Qu 2> /dev/null | wc -l)
minutes=$(uptime | awk '{print $3}')
timeunit=$(uptime | awk '{print $4}' | cut -c '1-3')

function notify() {
    if [ "$updates" -eq 0 ];
    then
        dunstify -a System -h string:x-dunst-stack-tag:welcome "Updates" "All packages synced"
    else
        dunstify -a System -h string:x-dunst-stack-tag:welcome "Updates" "Available: $updates"
    fi
}

if [ "$minutes" -lt 2 ] && [ "$timeunit" == 'min' ];
then
    dunstify -a System -t 3200 -h string:x-dunst-stack-tag:welcome "Welcome" "$username"
    sleep 1.5
    notify
fi
