#!/bin/bash

EMPTY_FILES=$(find nc-filesystem -type f -empty)

if [[ -z "$EMPTY_FILES" ]]; then
  echo -e "\nNo empty files found\n"
else
  echo -e "\n$EMPTY_FILES\n\nAre you sure you want to delete the files (y or n):\n"

  read -r ANSWER

  if [[ "$ANSWER" == "y" || "$ANSWER" == "Y" ]]; then
    find nc-filesystem -type f -empty -delete
    echo -e "\n---Files deleted---\n"
  else
    echo -e "\n---Operation cancelled---\n"
  fi
fi
