#!/usr/bin/env bash

# redirect STDOUT stream to a file (overwrite file)
echo "Hello, World!" > hello-world.txt
# using > creates file if it doesn't exist and overwrites the file if it does already exist

# redirection STDOUT stream to a file (append to file)
echo "Hello, World!" >> hello-world.txt
# using >> creates file if it doesn't exists but if it does exist then append to the file

# redirect input from a file (bad practice, not very readible)
echo < hello-world.txt # read input from a file

# redirect STDERR stream to a file
someboguscommand 2> error-log.txt

# redirect STDERR and STDOUT stream to a file
ls -l video.mpg blah.foo > myoutput 2>&1
