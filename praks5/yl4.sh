#!/bin/bash
# Automaatne tervitamine kellaaja ja kasutajanime järgi

# Võtame süsteemist praeguse tunni (00-23) ja sisselogitud kasutaja nime
aeg=$(date +%H)
kasutaja=$USER

if [ "$aeg" -ge 6 ] && [ "$aeg" -lt 12 ]; then
    echo "Tere hommikust, $kasutaja!"
elif [ "$aeg" -ge 12 ] && [ "$aeg" -lt 18 ]; then
    echo "Tere paevast, $kasutaja!"
elif [ "$aeg" -ge 18 ] && [ "$aeg" -lt 22 ]; then
    echo "Tere ohtust, $kasutaja!"
else
    echo "Head ood, $kasutaja!"
fi

