#!/usr/bin/env bash

# [---####-------------]
# 一个像xp电脑开机时一样的加载进度条

total=16

while true; do
    for ((i=0; i<=total;i++)); do
        don=$(printf "%${i}s" | tr ' ' '-')
        bar=$(printf "%4s" | tr ' ' '#')
        left=$(printf "%$((16 - $i))s" | tr ' ' '-')
        echo -en "\r[${don}${bar}${left}]"
        sleep .5
    done
done

