#!/bin/bash
    SCRIPT_PATH="$(realpath "$0")"
    SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

    current_time=$(date +"%m%d%S")
    echo "version.$current_time" > $SCRIPT_DIR/README.md
    git add .
    git commit -m 'update.'$1
    git push