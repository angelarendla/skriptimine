#!/bin/bash
# Automatiseeritud failide ja ridade töötlemine

for file in $(ls data/*.txt); do
    echo "Processing file: $file"
    
    while read -r line; do
        echo "Processing line: $line"
    done < "$file"
done
