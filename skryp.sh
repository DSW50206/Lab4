#!/bin/bash
if [[ "$1" == "--logs" ]]; then
	if [[ "$2" =~ ^[0-9]+$ ]]; then
        	licznik=$2
    	else
        	licznik=100
    	fi

    for ((i=1; i<=$licznik; i++))
    do
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Skrypt: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
    echo "Utworzono $licznik plików logx.txt"
    exit 0
fi
echo "Dzisiejsza data: $(date)"
