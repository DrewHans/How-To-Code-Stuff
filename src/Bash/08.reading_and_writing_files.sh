#!/usr/bin/env bash

# read entire file using cat
value=`cat read_file.txt`
echo "$value"

# read entire file using $(<fileName>)
value=$(filename.txt)
echo "$value"

# read file line by line
file='filename.txt'
i=1
while read line; do
  #Reading each line
  echo "Line No. $i : $line"
  i=$((i+1))
done < $file
