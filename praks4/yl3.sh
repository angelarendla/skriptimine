#!/bin/bash
# Operatsioonisüsteemi valik

echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
echo -n "Select your os choice [1 or 2]? "
read osch

if [ "$osch" -eq 1 ]; then
    echo "You Pick up Unix (Sun Os)"
elif [ "$osch" -eq 2 ]; then
    echo "You Pick up Linux (Red Hat)"
else
    echo "What you don't like Unix/Linux OS."
fi
