#!/usr/bin/env bash

## 'If' and Testing

# if statement (old test style)
if [ condition ]; then
  # statments go here
fi

# if statement (new test style)
if [[ condition ]]; then
  # statments go here
fi

# if elseif else statement (only 1 if, only 0 or 1 else, and [0,inf] elif, always end with fi)
if [[ condition1 ]]; then
  # if statments go here
elif [[ condition2 ]]; then
  # elseif statments go here
else 
  # else statment go here 
fi

## check the number of arguments passed into script (-lt is less than)
NUM_REQUIRED_ARGS=2
if [ $# -lt NUM_REQUIRED_ARGS ]; then
  echo "Not enough arguments.  Call this script with ./{$0} <name> <number>"
fi

## ASCII Comparison
if [ "$str1" = "$str2" ]; then
  echo "${str1} is equal to ${str2}"
fi

if [ "$str1" != "$str2" ]; then
  echo "${str1} is not equal to ${str2}"
fi

## Null (-n) or Zero length (-z)
notnully="this is something"
nully=""
if [ -n "$notnully" ]; then
  echo "This is not at all nully..."
fi
if [ -z "$nully" ]; then
  echo "nully/zeroooo (length)"
fi

## Integer Comparisons
int1=1
int2=7
## old style (most compatible)
if [ $int1 -eq $int2 ]; then
  echo "${int1} is equal to ${int2}"
fi
if [ $int1 -ne $int2 ]; then
  echo "${int1} is not equal to ${int2}"
fi
if [ $int1 -gt $int2 ]; then
  echo "${int1} is greater than ${int2}"
fi
if [ $int1 -lt $int2 ]; then
  echo "${int1} is less than ${int2}"
fi
if [ $int1 -ge $int2 ]; then
  echo "${int1} is greater than or equal to ${int2}"
fi
if [ $int1 -le $int2 ]; then
  echo "${int1} is less than or equal to ${int2}"
fi

### new style
if [[ $int1 == $int2 ]]; then
  echo "${int1} is equal to ${int2}"
fi
if [[ $int1 != $int2 ]]; then
  echo "${int1} is not equal to ${int2}"
fi
if [[ $int1 > $int2 ]]; then
  echo "${int1} is greater than ${int2}"
fi
if [[ $int1 < $int2 ]]; then
  echo "${int1} is less than ${int2}"
fi
if [[ $int1 >= $int2 ]]; then
  echo "${int1} is greater than or equal to ${int2}"
fi
if [[ $int1 <= $int2 ]]; then
  echo "${int1} is less than or equal to ${int2}"
fi
