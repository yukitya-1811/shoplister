# A Python Program to change the elements of shoplister

import os

# Opening file and extracting data

item = input('Which item would you like to change? > ')
newitem = input('Which item would you like to change it to? > ')

f = open(os.environ['pylist'],'r')
s = []
for i in f:
	s.append(i)

print('The old list was ', s)
f.close()  # File is closed


# Changing the required elements through iteration
for i in s:
	if i.strip() == item:
		s[s.index(i)] = newitem
	else:
		pass

print('The new list is ', s)


# Writing new data to file
f = open(os.environ['pylist'],'w')
f.writelines(s)
f.close()

print('Done!')
