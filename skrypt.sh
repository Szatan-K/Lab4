#!/bin/bash

if [[ $1 == "--date" ]] || [[ $1 == "-d" ]]; then
    dzisiejsza_data=$(date +%Y-%m-%d)
    echo "Dzisiejsza data to: $dzisiejsza_data"
elif [[ $1 == "--logs" ]] || [[ $1 == "-l" ]]; then
    if [[ -n $2 ]] && [[ $2 =~ ^[0-9]+$ ]]; then
        i=$2
    else 
        i=100
    fi
    for ((x=1; x<=$i; x++)); do
    nazwa_pliku="log$x.txt"
    echo "Nazwa pliku: $nazwa_pliku" >> "$nazwa_pliku"
    echo "Stworzony przez: $0" >> "$nazwa_pliku"
    echo "Data stworzenia: $(date)" >> "$nazwa_pliku"
    done
elif [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
    echo "Dostepne opcje:"
    echo "--date, -d - wyswietlenie dzisiejszej daty."
    echo "--logs, -l - tworzenie plikow tekstowych (istnieje mozliwosc wybrania liczby plikow do stworzenia. Domyslnie 100)"
    echo "--help, -h - wyswietlenie dostepnych opcji."
else
    echo "Niepoprawna opcja."
fi