#!/bin/bash
days=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")

get_day() {
day=$1
if [[ $day -ge 1 && $day -le 7 ]]
	then
		echo "Your choice is ${days[$day-1]}"
	else echo "Error"
fi

}
get_day $1
