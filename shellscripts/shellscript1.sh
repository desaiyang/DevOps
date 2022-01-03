#!/bin/sh
## to run this pass a value from the below array .. this is a sample script.. modify based of your need.
##useful for linux syntaxes.
##
input1=$1
a_array=(iam learning unix shell scripts)

echo ${a_array[*]}
if printf '%s\n' "${a_array[@]}" | grep -Fxq $1; then
   echo "found"
   if [ "$1" = "iam" ]; 
   then
    echo "iam - doing something if exists."
   fi
      if [ "$1" = "learning" ]; 
   then
    echo "learning - doing something if exists."
   fi
      if [ "$1" = "shell" ]; 
   then
    echo "shell - doing something if exists."
   fi
      if [ "$1" = "scripts" ]; 
   then
    echo "scripts - doing something if exists."
   fi
else
  echo "not found"
fi
echo "next"
