#!/usr/bin/env bash

# for loop
for i in {0..10}
do
  echo "iteration # $i"
done

# Bash version 4.0+ has inbuilt support for setting up a step value
#  using {start..end..increment} syntax
for i in {0..10..2}
do
  echo "i is $i"
done

# iterate over files in current directory
for f in *.log
do
  echo "log file found: $f"
done

# while loop
i=0
while [ $i -le 2 ]
do
  echo "Number: $i"
  ((i++))
done

# infinite while loop
while :
do
  echo "Press <CTRL+C> to exit."
  sleep 1
done
