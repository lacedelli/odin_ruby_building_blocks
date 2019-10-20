def substring (string, words)
	subs = string.split(' ')
	results = Hash.new

	words.map { |word|
		subs.each do |sub_w|
			if sub_w.downcase.match(word.downcase)
				if results[word]
					results[word] += 1
				else
					results[word] = 1
				end
			end
		end
	}	
	results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit",]

puts substring("below", dictionary).to_s
puts substring("Howdy partner, sit down! How's it going?", dictionary).to_s
