#!/bin/bash

# auto update
auto_update(){
    SCRIPT_PATH="$(realpath "$0")"
    SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
    echo path:$SCRIPT_DIR
    echo "update" >> $SCRIPT_DIR/README.md
    git add .
    git commit -m 'update'
    git push
}

count=10 
i=0

while [ $i -lt $count ]; do
    # 获取当前时间并格式化为 mmddss
    current_time=$(date +"%m%d%S")
    echo "$current_time"
    auto_update
    # 生成一个随机的间隔时间（0 到 60 秒之间）
    sleep_time=$((RANDOM % 60))
    sleep "$sleep_time"  # 随机间隔时间

    # 增加计数器
    ((i++))
done
