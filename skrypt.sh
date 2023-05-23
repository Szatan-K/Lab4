#!/bin/bash

if [[ $1 == "--date" ]]; then
    dzisiejsza_data=$(date +%Y-%m-%d)
    echo "Dzisiejsza data to: $dzisiejsza_data"
else
    echo "Niepoprawna opcja."
fi