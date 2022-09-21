#1 /bin/bash

count=100

if [ $count > 9 ]
then
	echo 'The first condition is true'

else
	echo 'The first condition is false'
fi


if [ $count < 20 ]
then
	echo 'The second condition is true'
else
	echo 'The second condition is false'
fi
