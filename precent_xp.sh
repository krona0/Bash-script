#!/usr/bin/env bash

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

