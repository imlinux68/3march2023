#!/bin/bash
function firstwhilesquare(){
read -p "enter a num: " num
i=1

while [ $i -le $num ]
	do
		
		echo -n "*"
		
		j=1
		while [ $j -lt $num ]
			do
				echo -n "*"
				let j=j+1
			done
		let i=i+1
	echo ""
	done
}

