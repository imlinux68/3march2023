#!/bin/bash



function valnum() {
att=1
while true
	do
	read -p "enter a num between 1-10: " num
		if [[ $num -lt 1 || $num -gt 10 ]]
			then
				echo "Enter a valid num!!!!"
				let att=att+1
		else echo "You are right! Yours number is in the range!"
			break
		fi
	done
echo "number of attempts is $att"
}
valnum
