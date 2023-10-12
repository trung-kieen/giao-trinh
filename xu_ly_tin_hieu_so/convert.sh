#!/bin/bash
# Author: Nguyen Khac Trung Kien

for file  in *.ppt; do
 echo $file 
libreoffice --headless --convert-to pdf "$file"
done
