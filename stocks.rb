def stock_picker(array)
	result = Array.new
	highest = array[-1]
	lowest = array[0]
	array.reverse.each_index do |i|
		if array.reverse[i] > highest
			highest = array.reverse[i]
		end
	end
	if highest == array[0]
		array.shift()
		highest = array[-1]
		array.reverse.each_index do |i|
			if array.reverse[i] > highest
				highest = array.reverse[i]
			end
		end
	end
	array.each_index do |i|
		if array[i] < lowest 
			lowest = array[i]
		end
		break if array[i] == highest
	end
	result << lowest
	result << highest
	result
end


stocks = stock_picker([17,3,6,9,15,8,6,1,10])
puts stocks.to_s
