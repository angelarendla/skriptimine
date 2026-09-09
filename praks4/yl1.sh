#!/bin/bash
# paarsuse kontroll

echo -n "Sisesta suvaline täisarv: "
read arv

# arvutame jääk 2-ga jagamisel
jaak=$(( $arv % 2 ))

if [ $jaak -eq 0 ]
then
    echo "$arv on paaris"
else
    echo "$arv on paaritu"
fi
# tingimus kontroll on lõppenud
