#!/bin/bash
# waits briefly for the thumb drive to mount before launching Obsidian
# if it's not plugged in, launches anyway after timeout (normal empty state)
MOUNT_PATH="/run/media/crow/DEEB-9B7C"

for i in $(seq 1 10); do
  [ -d "$MOUNT_PATH" ] && break
  sleep 0.5
done

obsidian &
