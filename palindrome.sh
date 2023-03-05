#!/bin/bash
function palind () {
read -p "Enter a num or word or sentence to check: " check

reverse=""

len=${#check}
for (( i=$len-1; i>=0; i-- ))
	do 
		reverse="$reverse${check:$i:1}"
	done
if [ $check == $reverse ]
	then
		echo "$check is palindrome"
	else
		echo "$check is not palindrome"
fi
}
palind
