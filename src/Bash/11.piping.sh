#!/usr/bin/env bash

# piping
ls | head -3 | tail -1 > myoutput.txt

# piping a file's contents into a program's STDIN
cat filename.txt | wc -l # good practice, very readible
