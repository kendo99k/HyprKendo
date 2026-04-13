#!/usr/bin/env bash

SEQ="$HOME/.config/matugen/colors/sequences.txt"

[ -f "$SEQ" ] || exit 0

for tty in /dev/pts/[0-9]*; do
    if [ -w "$tty" ]; then
        cat "$SEQ" > "$tty"
    fi
done

