#!/bin/bash
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

get_files $@
