#!/usr/bin/env bash

# 一个平平无奇的进度条
# [####################] 100%%  

total=20

for ((i=0; i<=total; i++)); do
    don=$(printf "%${i}s" | tr ' ' '#')

    # $(( ))    算术扩展
    # $( )      命令替换
    # ${ }      变量扩展
    left=$(printf "%$((total-i))s" | tr ' ' '-')

    precent=$(( i * 100 / total ))

    echo -en "\r[${don}${left}] ${precent}%" 

    sleep .5
    # echo $i
done