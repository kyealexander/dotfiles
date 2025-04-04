#!/bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

LEFT_PADDING=10
RIGHT_PADDING=10

SCREEN_WIDTH=$(xrandr | grep '*' | awk '{print $1}' | cut -d 'x' -f 1)

BAR_WIDTH=$(( SCREEN_WIDTH - LEFT_PADDING - RIGHT_PADDING ))
OFFSET_X=$(( LEFT_PADDING ))

export BAR_WIDTH
export OFFSET_X

polybar example &
