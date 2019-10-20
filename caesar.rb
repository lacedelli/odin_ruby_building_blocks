puts "Please input a string to format."
user_string = gets.chomp
puts "Please input a factor to shift The string by. (Only works with positive numbers.)"
user_shift = gets.chomp.to_i
while user_shift <= 0 
	puts "Please input a valid number."
	user_shift = gets.chomp.to_i
end

def caesar_cypher (text, shift)
	upper = ("A".."Z").to_a
	lower = ("a".."z").to_a
	text_a = text.chars
	finished = ""
	text_a.each do |char|
		# Check if the character is uppercase
		if upper.include?(char)
			index = upper.index(char)
			index += shift
			while index > upper.length
				index -= upper.length
			end
			finished << upper[index]
		# Check if it's lowercase
		elsif lower.include?(char)
			index = lower.index(char)
			index += shift
			while index > lower.length
				index -= lower.length
			end
			finished << lower[index]
		# Append all miscellaneous characters that don't match
		else
			finished << char
		end
	end
	finished
end

result = caesar_cypher(user_string, user_shift)
puts result


