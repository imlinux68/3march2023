#!/bin_-/bash

function num_pyramide () {
read -p "enter rows num: " rows
num=1
x=1
while [[ $x -le $rows ]]
	do
		y=1
		rowscenter=$rows-$x
		while [[ $y -le $rowscenter ]]
			do
				echo -n " "
				let y=y+1
				echo -n " "
			done
		num=$x
		z=1
			while [[ $z -le $x*2-1 ]]
				do
					if [[ $z -lt $x ]]
						then
							echo -n "$num "
							let num=num+1
 					elif [[ $y -eq $x ]]
						then
							echo -n "$num "
							let num=num-1
					else
						echo -n "$num "
						let num=num-1
					fi
					let z=z+1
				done
			echo ""
		let x=x+1
	done
}
