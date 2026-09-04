#!/bin/bash
# Eesmärk: Arvutada küpsisetordi valmistamiseks vajalik küpsisepakkide arv.

echo -n "Sisesta kandiku pikkus (cm): "
read k_pikkus
echo -n "Sisesta kandiku laius (cm): "
read k_laius

echo -n "Sisesta küpsise pikkus (cm): "
read pyks_pikkus
echo -n "Sisesta küpsise laius (cm): "
read pyks_laius

echo -n "Sisesta kihtide arv: "
read kihid

echo -n "Sisesta küpsiste arv ühes pakis: "
read pakis

# Arvutused puhtalt expr abil
pikkuses=$(expr $k_pikkus / $pyks_pikkus)
laiuses=$(expr $k_laius / $pyks_laius)
uhes_kihis=$(expr $pikkuses \* $laiuses)
kokku_kypsiseid=$(expr $uhes_kihis \* $kihid)

# Pakkide arvu ümardamine ülespoole
pakke=$(expr \( $kokku_kypsiseid + $pakis - 1 \) / $pakis)

echo "Vajalik küpsisepakkide arv: $pakke"
