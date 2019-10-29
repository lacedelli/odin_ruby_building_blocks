def bubble_sort (arr)
	arr.each do
		arr.each_index do |i|
			next unless arr[i+1]
			if arr[i] > arr[i+1]
				placeholder = arr[i+1]
				arr[i+1] = arr[i]
				arr[i] = placeholder
			end
		end
	end
	arr	
end

def bubble_sort_by(arr)
	arr.each do
		arr.each_index do |i|
			next unless arr[i+1] 
			
			if yield(arr[i], arr[i+1]) > 0
				placeholder = arr[i+1]
				arr[i+1] = arr[i]
				arr[i] = placeholder
			end
		end
	end
end

p bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }
