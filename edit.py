# Program to edit a shopping list
import os


print('Which item do you want to delete?')
item = input(' > ')

s = []
f = open(os.environ['pylist'],'r')
print(f)
for i in f:
	s.append(i)

print('The old list was ', s)
f.close()


for i in s:
	if i.strip() == item:
		s.remove(i)
	else:
		pass

print('The new list is  ', s)

f = open(os.environ['pylist'], 'w')
f.writelines(s)

print('Done!')





