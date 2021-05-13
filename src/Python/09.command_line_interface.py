#!/usr/bin/env python

from sys import argv, exit, stderr
import subprocess

# argument guard
if len(argv) == 1:
    err_msg = "Not enough arguments!\n"
    err_msg += "Call this script like so: " + argv[0] + " somevalue\n"
    stderr.write(err_msg)
    exit(1)

for index, arg in enumerate(argv):
    print("Index " + str(index) + ". Arg " + arg)

