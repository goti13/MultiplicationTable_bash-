#!/bin/bash

clear

echo "Welcome! Enter a number for the multiplication table:"
read multiplicationNumber

echo "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial):"
read fullOrPartial

if [ "$fullOrPartial" == "f" ]; then
    # Generate the full multiplication table
    echo "The full multiplication table for $multiplicationNumber is:"
    for i in {1..10}; do
        result=$((multiplicationNumber * i))
        echo "$multiplicationNumber x $i = $result"
    done

elif [ "$fullOrPartial" == "p" ]; then
    echo "Enter the lower number (between 1 and 10):"
    read startnumber
    echo "Enter the higher number (between 1 and 10):"
    read endnumber

    if [ "$startnumber" -le "$endnumber" ]; then
        # Generate the partial multiplication table
        for ((n=startnumber; n<=endnumber; n++)); do
            result=$((multiplicationNumber * n))
            echo "$multiplicationNumber x $n = $result"
        done
    else
        echo "Invalid range. Showing full table instead."
        for i in {1..10}; do
            result=$((multiplicationNumber * i))
            echo "$multiplicationNumber x $i = $result"
        done
    fi
else
    echo "Invalid option. Please enter 'f' for full or 'p' for partial."
fi

