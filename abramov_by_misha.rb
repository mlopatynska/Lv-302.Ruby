def abramov182(n)
  numbers = (1..n).select { |num| (num % 5).zero? && !(num % 7).zero? }
  { count: numbers.count, sum: numbers.inject(:+) }
end

# puts abramov182(100)

def  abramov323(n)
  arr_dividers_n = (2...n).select { |element| (n % element).zero? }
  (2...n).select {|element| arr_dividers_n.all? {|a| element % a !=0 }}  
end

puts abramov323(10)



def sum_of_div(number)
	(1..number/2).find_all {|num| number % num == 0 }.inject(:+)
end
def abramov560
	a = (200..300).inject([]) do |result, element| 
	result << (200..300).select do 
		|num| sum_of_div(element) == num && sum_of_div(num) == element
  end
end
  a.flatten
end

puts abramov560
