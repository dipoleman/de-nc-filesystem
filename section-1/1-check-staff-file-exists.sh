#!/bin/bash

formatted_number=$(printf "%03d" $1)

LIST=$(ls nc-filesystem/staff)

ANS=$(echo "$LIST" | grep "$formatted_number")

if echo "$LIST" | grep -q "$formatted_number"; then
  echo "Staff file found = " $ANS
else
  echo "Error: no staff file found"
fi

