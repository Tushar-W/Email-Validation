#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To Email Validation"
#PATTERN
pattern="^[.]{1}[a-z]{2,4}$"

#checking email pattern valid or not
function checkPattern() {
	if [[ $email =~ $pattern ]];
	then
		echo "Email is Valid"
	else
		echo "Email is Invalid"
	fi
}

#read input from user
read -p "Enter Eamil Address:" email
checkPattern
