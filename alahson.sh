#!/bin/bash

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
