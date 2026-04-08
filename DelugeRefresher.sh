#!/bin/bash

OUTPUT="$HOME/bin"
LOG="$OUTPUT/reannounce.log"
DELUGE_LOG="$OUTPUT/deluge.output"

ip="your ip for seedbox"
port="dameon port"
username="your username for deluge"
password="your password for deluge"

TRIES=50
SLEEP_TIME=10


torrentid="$1"
torrentname="$2"
torrentpath="$3"

mkdir -p "$OUTPUT"


if [ -z "$torrentid" ]; then
  echo "$(date '+%F %T') | ERROR: No torrent ID | ARGS: $@" >> "$LOG"
  exit 1
fi

echo "$(date '+%F %T') | START | ID=$torrentid | NAME=$torrentname" >> "$LOG"

i=1
while [ $i -le $TRIES ]; do
  echo "$(date '+%F %T') | Refresh attempt $i for $torrentid" >> "$LOG"

  deluge-console "connect '$ip':'$port' '$username' '$password'; update_tracker '$torrentid'" >> "$DELUGE_LOG" 2>&1

  sleep "$SLEEP_TIME"
  i=$((i+1))
done

echo "$(date '+%F %T') | DONE refreshing $torrentid" >> "$LOG"
exit 0