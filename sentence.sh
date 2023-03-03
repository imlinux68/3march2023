#!/bin/bash
function read_e () {
while :
 do
	read -p "Enter your sentence: " sentence
		e_word=$( echo $sentence | tr ' ' '\n' | grep "e" )
			echo "$e_word"	
 done
}
read_e
