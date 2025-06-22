#!/bin/bash

# auto update
SCRIPT_PATH="$(realpath "$0")"\
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
echo path:$SCRIPT_DIR
echo "update" >> $SCRIPT_DIR/README.md
git add .
git commit -m 'update'
git push