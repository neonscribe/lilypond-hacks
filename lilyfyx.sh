#!/bin/bash

date

for file in *.ly; do
    if [[ $file =~ "Bass.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Bass Clef Sheets/"
	fi
    elif [[ $file =~ "for Bb.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Bb Sheets/"
	fi
    elif [[ $file =~ "for Eb.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Eb Sheets/"
	fi
    elif [[ $file =~ "Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/"
	fi
    elif [[ $file =~ "Ly Core" ]]; then
	true
    else
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../"
	fi
    fi
done

for file in *.ly; do
    if [[ $file =~ "Bass.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Bass Clef Sheets/"
	fi
    elif [[ $file =~ "for Bb.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Bb Sheets/"
	fi
    elif [[ $file =~ "for Eb.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Eb Sheets/"
	fi
    elif [[ $file =~ "Standard.ly" ]]; then
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../Standard/"
	fi
    elif [[ $file =~ "Ly Core" ]]; then
	true
    else
	lilypond "$file"
	if [ $? -eq 0 ]; then
	    mv "${file%.ly}.pdf" "../"
	fi
    fi
done

date
