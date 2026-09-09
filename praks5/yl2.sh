#!/bin/bash
# Kuu järgi aastaaja väljastus

echo -n "Sisesta kuu number: "
read kuu

case $kuu in
    1|2|12)  echo "Praegu on talv" ;;
    3|4|5)   echo "Praegu on kevad" ;;
    6|7|8)   echo "Praegu on suvi" ;;
    9|10|11) echo "Praegu on sygis" ;;
    *)       echo "Antud kuu numbrit pole" ;;
esac
