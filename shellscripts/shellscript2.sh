#!/bin/bash
#very useful when you get no value in to a variable
#check for empty string and do some thing.

VAR=''
if [[ -z $VAR ]]; then
  echo "String is empty."
fi

