#!/bin/bash
# Skript väljastab tervituse süsteemi sisselogitud kasutajanimega

# 1. Väljasta „Tere, “ ilma reavahetuseta
echo -n "Tere, "

# 2. Tuvasta süsteemi kasutaja nimi ja väljasta see ilma reavahetuseta
kasutaja=$(whoami)
echo -n "$kasutaja"

# 3. Väljasta „!“ koos reavahetusega
echo "!"
