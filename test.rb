def abr
	(1000..1300).inject([]) {|arr, element| (1000..1300).inject(arr) {|arr, num| sum_of_div(element) == num && sum_of_div(num) == element ? arr << [element, num]: arr}}
end

def sum_of_div(number)
  (1..number / 2).find_all { |num| (number % num).zero? }.inject(:+)
end
p abr
