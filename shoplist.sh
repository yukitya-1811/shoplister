#A BASIC MENU-BASED SHELLSCRIPT TO STORE SHOPPING LISTS

echo "Welcome to shoplist $USER!"

end=0

while [ $end -lt 1 ]
do
	echo "What would you like to do? "
	echo "1. Make new shopping list"
	echo "2. Edit a shopping list"
	echo "3. Delete a shopping list"
	echo "4. Read a shopping list"
	echo "5. Exit"

	read choice

	if [ $choice -eq 1 ]
	then
		clear
		echo "Name of list? "
		read name

		echo "How many items are there in the list?"
		read index

		for ((i=1;i<=$index;i++))
		do
			echo "Enter item number $i"
			read item
			echo $item >> ~/Desktop/$name.txt

		done
	fi
done
