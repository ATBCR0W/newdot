#!/bin/bash
MOUNT_PATH="/run/media/crow/DEEB-9B7C"
for i in $(seq 1 10); do
  [ -d "$MOUNT_PATH" ] && break
  sleep 0.5
done
obsidian &
