#!/bin/bash
function multiply() {
for ((i=1; i<11; i++ ))
	do
		for ((j=1; j<11; j++))
			do
				echo -n " $(( j * i )) "
			done
		echo $i
	done
echo 
}
multiply
