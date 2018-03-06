def abramov182(n)
	numbers = (1..n).to_a.find_all {|num| (num % 5 == 0) && (num % 7 != 0)}
	result = Hash.new(0)
	result["count of numbers"] = numbers.count
	result["sum of numbers"] = numbers.inject(0) {|sum, element| sum +=element}
	result
end

puts abramov182(100)