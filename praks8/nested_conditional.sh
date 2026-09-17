#!/bin/bash
# Paaris- ja paaritute arvude kontroll 2D massiivis

declare -A arr=( [0,0]=1 [0,1]=2 [1,0]=3 [1,1]=4 )

for (( i=0; i<=1; i++ )); do
    for (( j=0; j<=1; j++ )); do
        if (( ${arr[$i,$j]} % 2 == 0 )); then
            echo "Even number found at position [$i,$j]: ${arr[$i,$j]}"
        else
            echo "Odd number found at position [$i,$j]: ${arr[$i,$j]}"
        fi
    done
done
