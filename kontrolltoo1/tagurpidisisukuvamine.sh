#!/bin/bash
# Skript, mis väljastab iseenda koodi täielikult tagurpidi

cat "$0" | tac | rev
