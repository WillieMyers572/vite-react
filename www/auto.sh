!/bin/bash

# Chromium便携版打包脚本
SCRIPT_PATH="$(realpath "$0")"\
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

echo "update" >> ./README.md
git add .
git commit -m 'update'
git push