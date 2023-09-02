#!/bin/bash

BAD_NAME_FILES=$(find nc-filesystem/code -type f \( -name "fun-*" -o -name "be-*" -o -name "de-*" \))

for file in $BAD_NAME_FILES; do
  base=$(basename "$file")

  if [[ $base == fun-* ]]; then
    new_base="${base#fun-}"
  elif [[ $base == be-* ]]; then
    new_base="${base#be-}"
  else [[ $base == de-* ]]; 
    new_base="${base#de-}"
  fi

  dir=$(dirname "$file")

  new_file="$dir/$new_base"

  mv "$file" "$new_file"
done
