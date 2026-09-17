#!/bin/bash
# Sõnede tükeldamine ja mustriotsing pesastatud tsüklis

declare -A arr=( [0,0]="apple,orange" [0,1]="banana,pear" [1,0]="grapefruit,pineapple" [1,1]="kiwi,mango" )

for (( i=0; i<=1; i++ )); do
    for (( j=0; j<=1; j++ )); do
        IFS=',' read -ra words <<< "${arr[$i,$j]}"
        for word in "${words[@]}"; do
            if [[ $word == *p* ]]; then
                echo "Match found at position [$i,$j]: $word"
            fi
        done
    done
done
