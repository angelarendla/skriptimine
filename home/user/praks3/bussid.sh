#!/bin/bash
# Eesmärk: Arvutada täidetud busside arv ja mahajäänud reisijate arv.

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

# Arvutused expr abil
bussid=$(expr $reisijad / $kohad)
maha=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud inimesi: $maha"
