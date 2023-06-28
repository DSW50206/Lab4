#!/bin/bash
if [[ "$1" == "--logs" ]] || [[ "$1" == "-l" ]]; then
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

if [[ "$1" == "--date" ]] || [[ "$1" == "-d" ]]; then
    echo "Dzisiejsza data: $(date)"
    exit 0
fi

if [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "--logs lub -l - Tworzy 100 plików logx.txt"
    echo "--logs [liczba] lub -l [liczba] - Tworzy określoną liczbę plików logx.txt"
    echo "--date lub -d - Wyświetla dzisiejszą datę."
    echo "--help lub -h - Wyświetla wszystkie dostepne opcje"
    exit 0
fi

