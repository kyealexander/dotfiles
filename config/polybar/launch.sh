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

cat > ~/.cache/wal/colors.ini <<EOF
[colors]
background = $(sed -n '1p' ~/.cache/wal/colors)
foreground = $(sed -n '3p' ~/.cache/wal/colors)
color0 = $(sed -n '4p' ~/.cache/wal/colors)
color1 = $(sed -n '5p' ~/.cache/wal/colors)
color2 = $(sed -n '6p' ~/.cache/wal/colors)
color3 = $(sed -n '7p' ~/.cache/wal/colors)
color4 = $(sed -n '8p' ~/.cache/wal/colors)
color5 = $(sed -n '9p' ~/.cache/wal/colors)
color6 = $(sed -n '10p' ~/.cache/wal/colors)
color7 = $(sed -n '11p' ~/.cache/wal/colors)
color8 = $(sed -n '12p' ~/.cache/wal/colors)
color9 = $(sed -n '13p' ~/.cache/wal/colors)
color10 = $(sed -n '14p' ~/.cache/wal/colors)
color11 = $(sed -n '15p' ~/.cache/wal/colors)
color12 = $(sed -n '16p' ~/.cache/wal/colors)
color13 = $(sed -n '17p' ~/.cache/wal/colors)
color14 = $(sed -n '18p' ~/.cache/wal/colors)
color15 = $(sed -n '19p' ~/.cache/wal/colors)
EOF

# === Launch Polybar === 
polybar example &
