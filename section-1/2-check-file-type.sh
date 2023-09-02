#!/bin/bash

USER_INPUT=$1

if test -f "nc-filesystem/code/$USER_INPUT"; then
  echo "$USER_INPUT is a file"
elif test -d "nc-filesystem/code/$USER_INPUT"; then
  echo -e "\n$USER_INPUT is a directory"
  echo -e "\nContents of $USER_INPUT:\n"
  ls -a "nc-filesystem/code/$USER_INPUT"
else
  echo "Error: $USER_INPUT is not a file or directory"
fi
