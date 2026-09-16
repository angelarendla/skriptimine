#!/bin/bash
# Arvude küsimine, negatiivsete vahelejätmine, 0 lopetab

while true; do
    echo -n "Sisesta number (0 lõpetab): "
    read nr
    if [ "$nr" -eq 0 ]; then
        break
    elif [ "$nr" -lt 0 ]; then
        continue
    fi
    echo "Sisestati positiivne arv: $nr"
done
