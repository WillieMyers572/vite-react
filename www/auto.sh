#!/bin/bash

# auto update
auto_update(){
    SCRIPT_PATH="$(realpath "$0")"
    SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
    echo path:$SCRIPT_DIR
    echo "update.$1" >> $SCRIPT_DIR/README.md
    git add .
    git commit -m 'update.'$1
    git push
}

count=10 
i=0

while [ $i -lt $count ]; do
    # 获取当前时间并格式化为 mmddss
    current_time=$(date +"%m%d%S")
    sleep_time=$((RANDOM % 60))
    echo "current_time=$current_time, sleep_time=$sleep_time, i=$i"
    auto_update $current_time
    # 生成一个随机的间隔时间（0 到 60 秒之间）
    sleep "$sleep_time"  # 随机间隔时间

    # 增加计数器
    ((i++))
done
