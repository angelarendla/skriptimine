#!/bin/bash
# Break, paralleeltöötlus ja funktsioonid pesastatud tsüklites

declare -A arr=( [0,0]=1 [0,1]=2 [1,0]=3 [1,1]=4 )

echo "--- 1. Break 2 näide ---"
for (( i=0; i<=1; i++ )); do
    for (( j=0; j<=1; j++ )); do
        if (( ${arr[$i,$j]} == 3 )); then
            echo "Break statement encountered at position [$i,$j]"
            break 2
        fi
        echo "Processing element [$i,$j]: ${arr[$i,$j]}"
    done
done

echo "--- 2. Paralleeltöötlus (& ja wait) ---"
for (( i=0; i<=1; i++ )); do
    for (( j=0; j<=1; j++ )); do
        (echo "Processing element [$i,$j]: ${arr[$i,$j]}"; sleep 1) &
    done
done
wait

echo "--- 3. Optimeeritud struktuur ---"
for (( j=0; j<=1; j++ )); do
    for (( i=0; i<=1; i++ )); do
        echo "Processing element [$i,$j]: ${arr[$i,$j]}"
    done
done

echo "--- 4. Funktsioonid pesastatud tsüklis ---"
process_element() {
    echo "Processing element [$1,$2]: ${arr[$1,$2]}"
}

for (( i=0; i<=1; i++ )); do
    for (( j=0; j<=1; j++ )); do
        process_element $i $j
    done
done
