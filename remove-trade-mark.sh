#!/bin/bash
# Author: Nguyen Khac Trung Kien

remove_trade_mark(){
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

