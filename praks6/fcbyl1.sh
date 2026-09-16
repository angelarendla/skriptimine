#!/bin/bash
# Tsükli katkestamine 7 juures

for (( i=1; i<=10; i++ )); do
    if [ $i -eq 7 ]; then
        break
    fi
    echo "i = $i"
done
