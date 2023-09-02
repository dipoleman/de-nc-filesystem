#!/bin/bash

mkdir -p nc-filesystem/cat-pics

COUNT=1
while read -r line; do
    echo $line
    mv $line nc-filesystem/cat-pics/cat${COUNT}.jpeg
    ((COUNT++))
done < section-1/reports/cat-pics.txt

