#!/bin/bash
cat << EOF > nums
1
2
3
4
5
6
7
8
9
EOF

file="$PWD/nums"

while IFS= read -r line
do
	if [[ $line%2 -eq 0 ]]
		then
	   		 printf '%s\n' "$line"
	fi
done <"$file"


