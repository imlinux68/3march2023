#!/bin/bash
function reversenum () {
read -p "enter any 5 digest num: " num
newnum=$(echo $num | rev)
echo "previous num was $num and reversed num is $newnum"
}
reversenum
