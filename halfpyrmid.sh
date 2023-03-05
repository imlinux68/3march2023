#!/bin/bash

function right_triangle () { 
read -p "the number of rows: "rows

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
right_triangle
