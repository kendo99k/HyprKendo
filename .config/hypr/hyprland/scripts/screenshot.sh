#!/usr/bin/env bash

DIR="$HOME/Pictures/Screenshots"
TIME=$(date "+%Y-%m-%d_%H-%M-%S")
FILE="Screenshot_${TIME}.png"
PATH_FILE="$DIR/$FILE"

ICON="folder-camera"
TIMEOUT=4000

mkdir -p "$DIR"

notify() {
    notify-send \
        -t "$TIMEOUT" \
        -i "$ICON" \
        -h string:x-canonical-private-synchronous:screenshot \
        "Screenshot saved" \
        "$FILE"
}

shot_now() {
    grim "$PATH_FILE" && wl-copy < "$PATH_FILE"
    notify
}

shot_area() {
    geometry=$(slurp) || exit 1
    grim -g "$geometry" "$PATH_FILE" && wl-copy < "$PATH_FILE"
    notify
}

case "$1" in
    --now)
        shot_now
        ;;
    --area)
        shot_area
        ;;
    *)
        echo "Usage: $0 --now | --area"
        ;;
esac

exit 0

