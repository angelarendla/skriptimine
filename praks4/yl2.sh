#!/bin/bash
# Reisi korraldamine

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

# Arvutame mitu täisbussi saab
bussid=$((reisijad / kohad))

# Kui keegi jäi üle, lisame ühe bussi juurde
if [ $((reisijad % kohad)) -gt 0 ]; then
    bussid=$((bussid + 1))
fi

echo "Kokku on vaja $bussid bussi"
