#!/bin/bash
# Pesastatud tsüklid ja break 2

for valine in {1..3}; do
    echo "Väline tsükkel: $valine"
    for sisemine in {1..10}; do
        if [ $sisemine -eq 5 ]; then
            echo "Sisemine jõudis 5-ni, katkestan mõlemad tsüklid!"
            break 2
        fi
        echo "  Sisemine: $sisemine"
    done
done
