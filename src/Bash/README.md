#Bash
###Bash Quick Reference
* Bash website:  https://www.gnu.org/software/bash/
* Bash documentation:  https://www.gnu.org/software/bash/manual/
* Bash download:  https://ftp.gnu.org/gnu/bash/
* Google's Shell Style Guide:  https://google.github.io/styleguide/shell

###Tutorialinux Notes:

# File extensions have no real meaning in linux
# but it is standard practice to save scripts with
# the .sh extension

# scripts also usually have a return value between 0 and 255
# exit 0 => shell exits with no errors
# exit 1 => shell exits with some kind of error
# exit 2 - 255 => the number returned indicates a specific error defined in the documentation
# exit $? will return the final thing

# executing a script with bash
./helloworld.sh # runs script in current shell

bash helloworld.sh # spawn a new instance of bash to run script

source helloworld.sh # use existing login shell to run script

# pass a script arguments
./thisscript.sh arg1 arg2 yoyo arg4

# print to stndout the arguments in the script
echo "This first three arguments are ${1}, ${2}, and ${3}"

# print to stndout the filename being run
the_file_name=$0
echo "The file being run is ${the_file_name}"

# print to stndout the number of arguments in the script
num_of_args=$#
echo "The number of arguments is ${num_of_args}"

# print to stndout all the arguments in the script
script_args=$1..$n
echo "The arguments in this script are ${script_args}"

