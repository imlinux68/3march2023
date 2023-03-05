#!/bin/bash
function sixteenwhile(){
read -p "enter a num: " num
i=1

while [ $i -le $num ]
	do
		h=0
		j=$i
		while [ $j -lt $num ]
			do
				echo -n " "
				let j=j+1
			done
		
		while [ $h -lt $i ]
			do
				echo -n "*"
				echo -n " "
				let h=h+1
			done
		let i=i+1
	echo ""
	done
}
sixteenwhile
