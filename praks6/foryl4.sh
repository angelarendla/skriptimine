#!/bin/bash
# Kasutajad süsteemist

for kasutaja in $(cut -d: -f1 /etc/passwd); do
    echo "Kasutaja: $kasutaja"
done
