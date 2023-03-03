#!/bin/bash
function oddpos () {
read -p "enter any 5 digit num: " num
echo "$num" | cut -c 1,3,5
}

oddpos
