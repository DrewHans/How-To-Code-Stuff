#!/usr/bin/env bash

# variables are prefixed with $
echo $HOME # returns home directory to standard in

# setting a local variable
my_var="This is a variable"  # note: do not put spaces before or after the =
some_number=6

echo $my_var
echo $some_number

# quoting characters
echo "My favorite number is $some_number"

# delimit the variable in string
echo "This is my $some_number th beer" # not delimited - space before th needed
echo "This is my ${some_number}th beer" # delimited - no space needed before th

# Doing Math
expr 5 + 10 / 2 # result is 10

# command substitution value assignment
i=`expr $some_number + 1`

# print 1 if variable i's value is equal to variable some_number's value
echo `expr $i = $some_number`
