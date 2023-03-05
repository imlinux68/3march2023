#!/bin/bash

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
