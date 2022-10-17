# Program to edit a shopping list
import os


print('Which item do you want to delete?')
item = input(' > ')

s = []
f = open(os.environ['pylist'],'r')
print(os.environ['pylist'])
for i in f:
	s.append(i.strip())
print('The old list was ', s)

f.close()


for i in s:
	if i == item:
		s.remove(i)
	else:
		pass

print('The new list is : ')
for i in s:
	print(i)

f = open(os.environ['pylist'], 'w')
f.writelines(s)

print('Done!')





