#!/usr/bin/env bash
# call this program with ./$SCRIPTNAME <name> <number>

NUM_REQUIRED_ARGS=2
num_args=$#

# Check number of arguments
if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then
  echo "Not enouch arguments.  Call this script with ${0} <name> <number>"
  exit 1
fi

# Check number of arguments
if [ $num_args -gt $NUM_REQUIRED_ARGS ]; then
  echo "Too many arguments.  Call this script with ${0} <name> <number>"
  exit 1
fi

# Set variables, using arguments
name=$1
number=$2
echo "Your first two arguments were: $1 $2"

# for loops; iteration, string interpolation
echo "You ran this program with ${num_args} arguments. Here they are:"
for arg in "$@"; do
  echo "$arg"
done

# define a funtion
function javatest() {
  # testing and conditionals
  if [ $number -eq 99 ]; then
    echo "You win!  You guessed the secret number!"
  elif [ $number -lt 10 ]; then
    echo "You're a courageous one.  I like that about you."
    
    # set a variable interactively
    echo "Hi ${name}, to avert a horrible death please enter the password:"
    read password

    if [ $password != "Java" ]; then
      echo "At least you're not a Java sympathizer. You may leave."
    else
      echo "Java programming is a hellish punishment... you may leave."
    fi
  fi
}

# call a function
javatest $number
