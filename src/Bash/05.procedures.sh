#!/usr/bin/env bash

# define a funtion
function somefunction() {
    echo "inside the function"
}

somefunction
print("outside the function")
somefunction

