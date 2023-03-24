#!/usr/bin/env bash

icon=" "

while true; do
    ID="$(lscpu | grep "scaling MHz" | awk '{print $4}')"
    echo "$icon$ID  " ; sleep 1
done
