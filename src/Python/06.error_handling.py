#!/usr/bin/env python

# generic exception handling
try:
  print(x)
except:
  print("An exception occurred")

# specific exception handling
try:
  print(x)
except NameError:
  print("Variable x is not defined")
except:
  print("Something else went wrong")

# specific handling of both exception case and successful execution case
try:
  print("Hello")
except:
  print("Something went wrong")
else:
  print("Nothing went wrong")

# finally block will execute regardless of try block exception
try:
  print(x)
except:
  print("Something went wrong")
finally:
  print("The 'try except' is finished")

# raise an error to stop the program
x = -1
if x < 0:
  raise Exception("Sorry, no numbers below zero")

# raise a TypeError
x = "hello"
if not type(x) is int:
  raise TypeError("Only integers are allowed")
