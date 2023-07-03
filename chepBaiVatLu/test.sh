#!/bin/bash

for ((i=1; i<=18; i++)); do
    original_name="$i.jpg"
    new_name="$((19-i)).jpg"
    mv "$original_name" "$new_name"
done
