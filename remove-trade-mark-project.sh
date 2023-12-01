#!/bin/bash
# Author: Nguyen Khac Trung Kien

find . -type f -o -type d | while read -r file
do
bash 
    echo "$file"
    # bash remove-trade-mark-folder.sh "$file"
done
