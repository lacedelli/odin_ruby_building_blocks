module Enumerable
	def my_each
		i = 0
		while i < self.length
			yield self[i]
			i += 1
		end
		self
	end

	def my_each_with_index
		i = 0
		while i < self.length
			yield i,self[i]
			i += 1
		end
		self
	end

	def my_select
		arr = Array.new
		self.my_each do |i|
			return arr << i if yield i 
		end
		self
	end

	def my_all?
		self.my_each do |i|
			return false if yield(i) == false
		end
		true
	end

	def my_any?
		self.my_each do |i|
			return true if yield(i) == true
		end
		false
	end

	def my_none?
		self.my_each do |i|
			return false if yield(i) == true
		end
		false
	end

	def my_count
		count = 0
		self.my_each do |i|
			count += 1 if yield(i) == true
		end
		count
	end

	def my_map(&block)
		arr = Array.new
		if block_given?
			self.my_each do |i|
				arr << block.call(i)
			end
		else 
			self.my_each do |i|
				arr << yield(i)
			end
		end
		arr
	end

	def my_inject
		product = 1
		self.my_each do |i|
			product = yield product, i
		end
		product
	end

		
end

def multiply_els(arr)
		arr.my_inject {|p, i| p * i}
end


