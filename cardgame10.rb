# Currently the code spits out your guess, whether you need to pick higher or lower
# and what the computer's suit is. Still having a hard time looping things. Gonna convert
# some of these bits to methods and try from their

# This is how the computer picks his/her card
cpu_value = rand(2..14)
cpu_suit = rand(4)

puts cpu_value

# Starts loop until user guesses correctly
round = 0
while round == 0 do

	# This section is a clean and clear user interface. 
	puts "Pick a card"
	puts "Choose 2 through 10, J, Q, K, or A"
	value = gets.chomp.downcase
	puts "Now pick a suit: (H)earts, (S)pades, (D)iamonds, (C)lubs"
	# This allows the user to type several ways without issues. Ex: 'H', 'h', 'Hearts', 'heart' and all equal 'h'
	suit = gets.chomp.downcase[0] 



	# Then next two parts of code converts human interface into something the cpu can understand: integers

	# Converts the face cards into numbers
	unless value.is_a? Integer
		if value == 'a'
			value = 14
		elsif value == 'k'
			value = 13
		elsif value == 'q'
			value = 12
		elsif value == 'j'
			value = 11
		else
			value = value.to_i
		end
		puts value
	end
	# Converts the suits into numbers 
	if suit == 'h'
		suit = 0
	elsif suit == 's'
		suit = 1
	elsif suit == 'd'
		suit = 2
	elsif suit == 'c'
		suit = 3
	end
		puts suit

	# This bit compares user's value pick to cpu's value pick.
	if cpu_value == value
		puts "Right card!...wrong suit."
	elsif cpu_value > value
		puts "Higher"
	elsif cpu_value < value
		puts "Lower"
	end


	unless cpu_value == value && cpu_suit == suit
		if cpu_suit == 0
			puts "heart"
		elsif cpu_suit == 1
			puts "spade"
		elsif cpu_suit == 2
			puts "diamond"
		elsif cpu_suit == 3
			puts "clubs"
		end
	end
	if cpu_value == value && cpu_suit == suit
		round = 1
		puts "You win!"
	end
end


puts cpu_value
puts cpu_suit