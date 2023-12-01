#!/bin/bash
# Author: Nguyen Khac Trung Kien
# Check if a folder is provided as an argument
# if [ $# -eq 0 ]; then
#     echo "Usage: $0 <folder>"
#     exit 1
# fi

# folder="$1"

remove_trade_mark(){
# Check if the folder exists
# folder=$1
# if [ ! -d "$folder" ]; then
#     echo "Error: Folder not found."
#     exit 1
# fi

folder=$(pwd)

# Loop through files in the folder
find "$folder" -type f | while read -r file; do
# for file in "$folder"/*; do
    # Check if the file name contains the trademark
    if [[ $file == *"[cuuduongthancong.com]"* ]]; then
        # Remove the trademark from the file name
        new_name=$(echo "$file" | sed 's/- \[cuuduongthancong.com\]//g')

        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed: $file -> $new_name"
    fi
done




}

remove_trade_mark $folder

