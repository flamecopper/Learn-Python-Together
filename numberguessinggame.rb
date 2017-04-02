#numberguessinggame.rb

puts "Hello, what is your favourite number?"
STDOUT.flush
number = gets.chomp
puts "Your favourite number is " + number

minNumber = 1
maxNumber = 100

num = Random.new
magicNumber = num.rand(minNumber..maxNumber)

puts magicNumber.to_s

puts "The magic number is between #{minNumber} and #{maxNumber}"

found = false

while !found
	puts "Guess what it is?"
	guess = gets.chomp
	if guess == magicNumber.to_s
		found = true
	end
	if guess < magicNumber.to_s
		puts "Too Low"
	end
	if guess > magicNumber.to_s
		puts "Too High"
	end
end

puts "You guess correctly"