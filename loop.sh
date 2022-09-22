#! /bin/bash

#Shell Script to understand loops

number=1
while [ $number -lt 10 ]
do
	echo "$number"
	number=$(( number+1 ))

done


