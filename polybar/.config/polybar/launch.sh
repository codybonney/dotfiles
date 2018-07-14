#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top &
echo "polybar top launched"
sleep 0.5
polybar right &
echo "polybar right launched"
sleep 0.5
polybar left &
echo "polybar left launched"

