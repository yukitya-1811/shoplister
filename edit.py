# Program to edit a shopping list
import os

# Opening the file and extracting the data
print('Which item do you want to delete?')
item = input(' > ')

s = []
f = open(os.environ['pylist'],'r')
print(f)
for i in f:
	s.append(i)

print('The old list was ', s)
f.close()

# Removing element by iteration
for i in s:
	if i.strip() == item:
		s.remove(i)
	else:
		pass

print('The new list is  ', s)  # Item was removed

# Writing new data to the file
f = open(os.environ['pylist'], 'w')
f.writelines(s)

print('Done!')





