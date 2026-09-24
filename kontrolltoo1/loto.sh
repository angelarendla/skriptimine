#!/bin/bash
# 5 unikaalset lotonumbrit (1–50) ilma massiivideta

temp="/tmp/loto.txt"
> "$temp"

# Genereerime täpselt 5 unikaalset numbrit
while [ $(wc -l < "$temp") -lt 5 ]; do
    nr=$(( ($RANDOM % 50) + 1 ))
    # Kui numbrit veel failis pole, lisame
    grep -xq "$nr" "$temp" || echo "$nr" >> "$temp"
done

numbrid=$(cat "$temp")
rm -f "$temp"
aeg=$(date "+%Y-%m-%d %H:%M:%S")

echo "1) Kuva ekraanil"
echo "2) Salvesta faili"
read -p "Valik (1/2): " valik

if [ "$valik" = "2" ]; then
    echo "[$aeg] $numbrid" >> lotonumbrid.txt
    echo "Salvestatud faili lotonumbrid.txt"
else
    echo "[$aeg] $numbrid"
fi
