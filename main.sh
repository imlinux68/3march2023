#!/bin/bash

function makedirs () {
echo "1.create dirs"
cd ~
mkdir -p "/home/user/Cloud/{DB/{DynamoDB,RDS},serverless/{Aurora,cloudfront,Fargate}}"

echo "2. move"
mv ~/Cloud/serverless/Aurora ~/Cloud/DB/

echo "3. rename cloudfront to lambda"
mv ~/Cloud/serverless/cloudfront ~/Cloud/serverless/lambda

echo "4. insert text"
echo  'Data migration is the process of moving data from one location to another, one
format to another, or one application to another. Generally, this is the result of
introducing a new system or location for the data' > ~/Cloud/DB/factDB

echo "5. show content"
cat ~/Cloud/DB/factDB

echo "6. insert into serverless"
echo 'Serverless is a cloud-native development model that allows developers to build
and run applications without having to manage servers.' > ~/Cloud/serverless/lambda/factserverless

echo "7. copy content"
cat ~/Cloud/serverless/lambda/factserverless > ~/Cloud/serverless/Fargate

echo "8. list processes in hierrarchy"
pstree

echo "9.delete cloud dir"
echo "all dirs are destoryind!!!!!"
sleep 3
rm -rvf ~/Cloud 
}

function get_files () {
        for i in "$@"
                do
                        if [[ -x $i && -e $i ]]
				then
                               		echo "File and permissions are exists"
			elif [[ -e $i && ! -x $i ]]
				then 
					echo "File exists but doesnt have x"
					chmod u+x $i
					echo "Perms granted" 
                        else 	
				touch $i
                                chmod u+x $i 
                                echo "Permission granted"
                        fi
                done
}

function get_day() {
days=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")
day=$1
if [[ $day -ge 1 && $day -le 7 ]]
	then
		echo "Your choice is ${days[$day-1]}"
	else echo "Error"
fi

}

function oddpos () {
read -p "enter any 5 digit num: " num
echo "$num" | cut -c 1,3,5
}

function reversenum () {
read -p "enter any 5 digest num: " num
newnum=$(echo $num | rev)
echo "previous num was $num and reversed num is $newnum"
}

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

function pass () {
while :
do
    read -sp "Enter a pass: " pass
	len=${#pass}

    if [[ $len -gt 8 && $pass == *[[:upper:]]* && $pass == *[[:lower:]]* ]]
		then
		    echo "Password is strong enough"
    else
        echo "Try again"
    fi
done
}

function fileeven () {
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
}

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

function read_e () {
while :
 do
	read -p "Enter your sentence: " sentence
		e_word=$( echo $sentence | tr ' ' '\n' | grep "e" )
			echo "$e_word"	
 done
}

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

function firstwhilesquare(){
read -p "enter a num: " num
i=1

while [[ $i -le $num ]]
	do
		
		echo -n "*"
		
		j=1
		while [[ $j -lt $num ]]
			do
				echo -n "*"
				let j=j+1
			done
		let i=i+1
	echo ""
	done
}

function right_triangle () { 
read -p "the number of rows: " rows

i=1
while [[ $i -le $rows ]]
     do
      j=1
      while [[ $j -le $i ]]
      do
        echo -n "$j "
        let j=j+1
      done
          echo ""
          let i=i+1
      done
  }

function revtriangle () {
read -p "number of rows: " rows

i=$rows
while [[ $i -ge 1 ]] 
    do
        j=1
      while [[ $j -le $i ]]
        do
            echo -n "$j "
            let j=j+1
        done
  echo ""
  let i=i-1
done
}

function pyramide_triangle(){
read -p "enter a num: " num
i=1

while [[ $i -le $num ]]
	do
		h=0
		j=$i
		while [[ $j -lt $num ]]
			do
				echo -n " "
				let j=j+1
			done
		
		while [[ $h -lt $i ]]
			do
				echo -n "*"
				echo -n " "
				let h=h+1
			done
		let i=i+1
	echo ""
	done
}

function Floyds () {
read -p "enter the number of rows" rows
num=1
i=1
    while [[ $i -le $rows ]]
        do
            while [[ $j -le $i ]] 
                do
                    echo -n "$num "
                    let num=num+1
                    let j=j+1
                done
          echo ""
          let i=i+1
        done
}

function empty_rec () {
read -p "enter the number of rows: " rows

i=1
while [[ $i -le $rows ]]
     do
      j=1
      while [[ $j -le $rows ]]
         do
            if [[ $i -eq 1 ]] || [[ $i -eq $rows ]] || [[ $j -eq 1 ]] || [[ $j -eq $rows ]] 
            then
              echo -n "* "
            else
              echo -n "  "
            fi
            let j=j+1
          done
         echo ""
         let i=i+1
       done
}

function makbilit () {
row=1
while [[ $row -le 5 ]]
do
  space=1
  while [[ $space -le $((5-row)) ]]
      do
        echo -n " "
        let space=space+1
      done
  
  stars=1
  while [[ $stars -le 4 ]]
      do
        echo -n "*"
        let stars=stars+1
      done
  
  echo ""
  let row=row+1
done
}

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

while true
	do
		echo "********************"
		echo "MAKE YOUR CHOICE NOW"
		echo "********************"
		echo "1. run make dirs"
		echo "2. run get_files"
		echo "3. run get_day"
		echo "4. run odd position"
		echo "5. run reverse 5 digits num"	
		echo "6. run find biggest number"
		echo "7. run palindrome check"
		echo "8. run pass check"
		echo "9. run read even nums from file"
		echo "10. run validate num"
		echo "11. run read e function"
		echo "12. run multiply table"
		echo "13. run solid rectangle"
		echo "14. run half pyramide"
		echo "15. run revtriangle"
		echo "16. run pyramide_triangle"
		echo "17. run Floyds triangle"
		echo "18. run empty rectangle"
		echo "19. run makbilit"
		echo "20. run nums pyramide"
		echo "21. exit"		
		read -p "Enter a num to choose function: " c
    case $c in
		1) makedirs  ;;
		2) get_files ;;
		3) get_day ;;
		4) oddpos ;;
		5) reversenum ;;
		6) findbig ;;
		7) palind ;;
		8) pass ;;
		9) fileeven ;;
		10) valnum ;;
		11) read_e ;;
		12) multiply ;;
		13) firstwhilesquare ;;
		14) right_triangle ;;
		15) revtriangle ;;
		16) pyramide_triangle ;;
		17) Floyds ;;
		18) empty_rec ;;
		19) makbilit ;;
		20) num_pyramide ;;
		21) exit 5 ;;
		*) echo "1-21 ONLY!!!" ; sleep 3 ;;
    esac
	done






