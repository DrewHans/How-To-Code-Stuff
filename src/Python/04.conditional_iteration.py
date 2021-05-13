#!/usr/bin/env python

x = 5
booleanvariable = True

# Iteration Statements
# count controlled for loop
for i in range(x):
    print("i = " + str(i))

# condition controlled while loop
while booleanvariable:
    x += 1
    print("x = " + str(x))
    if x == 9:
        booleanvariable = False
