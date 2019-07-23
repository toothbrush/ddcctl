#!/bin/bash

set -euo pipefail

PATH="/usr/local/bin:$PATH"

stored_val=$(cat ~/.current_brightness)
next_val=$((stored_val - 7))

if [[ $next_val -lt 10 ]]; then
    exit 2
fi

ddcctl -d 1 -b $next_val

echo $next_val > ~/.current_brightness
