#!/bin/bash
killall -q polybar

# wait until the bar process actually exits before relaunching
while pgrep -x polybar >/dev/null; do sleep 0.5; done

BAR_POS_FILE="/tmp/polybar_position"
if [ -f "$BAR_POS_FILE" ]; then
  polybar bottom &
else
  polybar top &
fi
