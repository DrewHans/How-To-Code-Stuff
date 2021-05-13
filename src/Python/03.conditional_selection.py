#!/usr/bin/env python

is_true = True
is_false = False

# Selection Statements
# if then standard
if is_true:
    print("is_true is true")

# if then with not operator
if not is_false:
    print("is_false is false")

# if then with and operator (note: and works the same as && but && has higher precidence)
if is_true and 1 > 0:
    print("is_true and 1 > 0 are both true")

# if then with or operator (note: or works the same as || but || has higher precidence)
if is_true or is_false:
    print("is_true or is_false is true")

# if else
if is_true:
    print("is_true is true")
else:
    print("is_true is false")

# if else if
if is_true:
    print("is_true is true")
elif is_false:
    print("is_false is true")
else:
    print("is_true and is_false are not true")
    
