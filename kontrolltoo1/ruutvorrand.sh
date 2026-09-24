#!/bin/bash
# Ruutvõrrandi Ax^2 + Bx + C = 0 lahendamine awk abil

if [ $# -ne 3 ]; then
    echo "Kasutus: $0 A B C"
    exit 1
fi

a=$1
b=$2
c=$3

if [ "$a" -eq 0 ]; then
    echo "Viga: Kordaja A ei tohi olla 0!"
    exit 1
fi

awk -v a="$a" -v b="$b" -v c="$c" 'BEGIN {
    d = b * b - 4 * a * c;
    if (d < 0) {
        print "Reaalarvulisi lahendeid ei ole.";
    } else if (d == 0) {
        x = -b / (2 * a);
        printf "Üks lahend: x = %.5f\n", x;
    } else {
        x1 = (-b + sqrt(d)) / (2 * a);
        x2 = (-b - sqrt(d)) / (2 * a);
        print "Kaks lahendit:";
        printf "x1 = %.5f\n", x1;
        printf "x2 = %.5f\n", x2;
    }
}'
