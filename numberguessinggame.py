#Copyright of Alvin Oo
#Amended Date 02-Apr-2017

import random

print ("Hello, what is your favourite number?")
number = input()

print("Your favourite number is " + str(number))

# RuntimeError

#Traceback (most recent call last):
#  File "sample.py", line 6, in <module>
#    print("Your favourite number is " + number)
#TypeError: cannot concatenate 'str' and 'int' objects


minNumber = 1
maxNumber = 100
magicNumber = random.randint(minNumber, maxNumber)

message = "The magic number is between {0} and {1}"
print(message.format(minNumber,maxNumber))

found = False

while not found:
	print("Guess what it is?")
	guess = input()
	if guess == magicNumber:
		found = True
	if guess < magicNumber:
		print("Too Low")
	if guess > magicNumber:
		print("Too High")
	
print("You got it")