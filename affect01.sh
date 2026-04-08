#!/usr/bin/env bash

# 用于测试一些新功能

arr_linux=('I' 'love' 'you' 'Linux')

while true; do
    for c in "${arr_linux[@]}"; do
        # echo -en "\r $c "
        echo -en "\r      \r$c"
        sleep 1s
    done
done