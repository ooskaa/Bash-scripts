#!/bin/bash

for FILE in <path to dir>;
do
    MODIF_DATE=$(echo "$FILE" | awk -F'[/.]' '{print $(NF-1)}');
    touch -d $MODIF_DATE $FILE;
    echo "Last modification date of file $FILE changed to $MODIF_DATE";
done
