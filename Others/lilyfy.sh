#!/bin/bash

date

for file in *.ly; do
    if [[ $file =~ "Ly Core" ]]; then
	true
    else
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "./PDF/"
	fi
    fi
done

date
