#!/bin/bash

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
