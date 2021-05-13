#!/usr/bin/env python#!/usr/bin/env python

print("Please enter input:  ")

# note Python 2 uses raw_input() and Python 3 uses input()
try:
    user_input = raw_input()  # throws NameError in Python 3
except NameError:
    user_input = input()

# output user_input to console
print(user_input)

