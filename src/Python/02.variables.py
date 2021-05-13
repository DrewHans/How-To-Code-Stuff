#!/usr/bin/env python

# variables have an identifier and a value
a = 1

# multiple variables can be assigned a single value
a = b = c = 1

# multiple variables can be assigned multiple values
a, b, c = 1, 2, "john"

'''
Python has five standard data types:
- Number
- String
- List
- Tuple
- Dictionary
'''

# Python Numbers
integer_number_var = 100
float_number_var = 1000.0
complex_number_var = 3.14j

# Python Strings
string_var = "Hello World!"

first_char_of_string_var = string_var[0]
second_char_of_string_var = string_var[1]
slice_string_var_at_third_char = string_var[2:]
third_to_fifth_chars_of_string_var = string_var[2:5]
duplicate_string_var = string_var * 2
concatenate_string_var = string_var + "TEST"

# Python Lists
list_var = ["abcd", 786, 2.23, "john", 70.2]

first_element = list_var[0]
all_elements_but_first = list_var[1:]
second_and_third_elements = list_var[1:3]
duplicate_list = list_var * 2
concatenate_list = list_var + [123, 789]

# Python Tuples - note: cannot be updated after initialized
tuple_var = ("abcd", 786, 2.23, "john", 70.2)

first_element = tuple_var[0]
all_elements_but_first = tuple_var[1:]
second_and_third_elements = tuple_var[1:3]
duplicate_tuple = tuple_var * 2
concatenate_tuple = tuple_var + [123, 789]

# Python Dictionary
dict_var = {}
dict_var["somekey"] = "some_value"
dict_var["another_key"] = "some_other_value"
dict_var[2] = "blah_blah"
dict_var["last_key"] = 7

value_for_somekey = dict_var["somekey"]
complete_dictionary = dict_var
all_keys = dict_var.keys()
all_values = dict_var.values()

# Boolean
a_true_bool = True
a_false_bool = False
