#!/bin/bash
# Õnnenumbrite leidmine vahemikus 1000–9999 ilma funktsioonide ja tekstiteisenduseta

for (( arv=1000; arv<=9999; arv++ )); do
    # Säilitame algse arvu kontrollimiseks ja väljastamiseks
    temp=$arv

    # Kordame numbrite liitmist seni, kuni tulemus on ühekohaline (suurem kui 9)
    while [ $temp -gt 9 ]; do
        summa=0
        n=$temp
        
        # Eraldame numbrid arvutuslikult (jäägiga jagamine ja täisarvuline jagamine)
        while [ $n -gt 0 ]; do
            viimane_number=$(( n % 10 ))
            summa=$(( summa + viimane_number ))
            n=$(( n / 10 ))
        done
        
        # Uus arvutatud summa läheb järgmise ringi sisendiks
        temp=$summa
    done

    # Kui lõpptulemus (ühekohaline arv) on 7, väljastame algse arvu
    if [ $temp -eq 7 ]; then
        echo $arv
    fi
done
