#!/bin/bash

function my_function() {
    local var1="hello"
}


my_function
# This var will not be visible, because of the local function 
echo "${var1}"
