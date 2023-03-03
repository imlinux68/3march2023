
#!/bin/bash

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
