#!/bin/bash
function findbig () {
read -p "Enter 3 nums to compare: " num1 num2 num3
	if [[ $num1 -gt $num2 && $num1 -gt $num3 ]]
		then
			echo "$num1 is biggest"
        elif [[ $num2 -gt $num1 && $num2 -gt $num3 ]]
                then
                        echo "$num2 is biggest"
        else
		echo "$num3 is biggest"
	fi
}
findbig
