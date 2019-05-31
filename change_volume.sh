#!/bin/sh

current_sink=`pactl list short sinks | grep RUNNING | cut -f1`
current_volume=`pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $current_sink + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'`

actually_adjust_volume=0

volume_change_amount="-2%"
if [ "$1" = "increase" ]; then
    # Increase volume here, set second argument as percentage if specified
    if [ "$2" != "" ]; then
        volume_change_amount="+$2%"
    else
        volume_change_amount="+1%"
    fi
    
    # If above 150, don't increase anymore
    if [ "$current_volume" -lt 150 ]; then
        actually_adjust_volume=1
    fi
else
    # Decrease volume here
    if [ "$2" != "" ]; then
        volume_change_amount="-$2%"
    else
        volume_change_amount="-2%"
    fi
    # If below 0, don't decrease anymore
    if [ "$current_volume" -gt 0 ]; then
        actually_adjust_volume=1
    fi
fi
    
if [ "$actually_adjust_volume" = 1 ]; then
    pactl set-sink-volume $current_sink $volume_change_amount
fi
