#!/bin/bash

if [[ $1 == "--date" ]]; then
    dzisiejsza_data=$(date +%Y-%m-%d)
    echo "Dzisiejsza data to: $dzisiejsza_data"
elif [[ $1 == "--logs" ]]; then
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
elif [[ $1 == "--help" ]]; then
    echo "Dostepne opcje:"
    echo "--date - wyswietlenie dzisiejszej daty."
    echo "--logs - tworzenie plikow tekstowych (istnieje mozliwosc wybrania liczby plikow do stworzenia. Domyslnie 100)"
    echo "--help - Wyswietlenie dostepnych opcji."
else
    echo "Niepoprawna opcja."
fi