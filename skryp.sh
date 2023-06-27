#!/bin/bash
if [[ "$1" == "--logs" ]]; then
    for ((i=1; i<=100; i++))
    do
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Skrypt: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
    echo "Utworzono 100 plików logx.txt"
    exit 0
fi
echo "Dzisiejsza data: $(date)"
