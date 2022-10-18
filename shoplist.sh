#A BASIC MENU-BASED SHELLSCRIPT TO STORE SHOPPING LISTS

echo "Welcome to shoplist $USER!"

# A variable that decides whether to keep showing the menu or not
end=0

# Main menu

while [ $end -lt 1 ]
do
	echo "What would you like to do? "
	echo "1. Make new shopping list"
	echo "2. Edit a shopping list"
	echo "3. Delete a shopping list"
	echo "4. Read a shopping list"
	echo "5. Exit"
	echo "6. Clear the Screen"

	read choice

	if [ $choice -eq 1 ]  # For making the list
	then
		clear
		echo "Name of list? "
		read name

		echo "How many items are there in the list?"
		read index

		for ((i=1;i<=$index;i++))  # Takes input and creates the list
		do
			echo "Enter item number $i"
			read item
			echo $item >> ~/Desktop/bashlearn/Shoplists/$name.txt  # All lists are made in
																   # a pre-specified folder
		done													   # in this case: Shoplists

	elif [ $choice -eq 2 ]  # For editing the lists
	then
		clear
		ls ~/Desktop/bashlearn/Shoplists
		echo "Which list do you want to edit?"
		read -p " > " listname
		cat ~/Desktop/bashlearn/Shoplists/$listname
		echo "What do you wish to do? Add item [a], Delete item [b], Change item [c] "
		read -p " > " choice
		case $choice in
			a)  # Adding items
				read -p 'Which item do you want to add? > ' item
				echo $item >> ~/Desktop/bashlearn/Shoplists/$listname;;

			b)  # Deleting items via Python
				pylist="Shoplists/$listname"
				export pylist
				python3 edit.py;;  # Takes us to python script

			c)	# Changing items via Python
				pylist="Shoplists/$listname"
				export pylist
				python3 change.py;;  # Takes us to python script

			*)
				echo 'I did not get that...';;
		esac


	elif [ $choice -eq 3 ]   # For deleting lists with rm
	then
		clear
		ls ~/Desktop/bashlearn/Shoplists
		echo "Which list would you like to delete?"
		read -p " > " listname
		rm -iv ~/Desktop/bashlearn/Shoplists/$listname

	elif [ $choice -eq 4 ]  # For reading lists
	then
		clear
		ls ~/Desktop/bashlearn/Shoplists
		read -p 'Which list do you want to read? > ' listname
		cat ~/Desktop/bashlearn/Shoplists/$listname
		echo

		
	elif [ $choice -eq 5 ]  # Exit
	then
		clear
		exit 0	

	elif [ $choice -eq 6 ]  # Clear screen in case of clutter
	then
		clear



	fi
done
