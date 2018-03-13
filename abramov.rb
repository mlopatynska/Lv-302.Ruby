# abramov tasks
module Abramov
  def abramov182(number)
    numbers = (1..number).select { |num| (num % 5).zero? && !(num % 7).zero? }
    { count: numbers.count, sum: numbers.inject(:+) }
  end

  def abramov323(num)
    arr_dividers_n = (2...num).select { |element| (num % element).zero? }
    (2...num).select { |element| arr_dividers_n.all? { |a| element % a != 0 } }
  end

  def sum_of_div(number)
    (1..number / 2).find_all { |num| (number % num).zero? }.inject(:+)
  end

  def abramov560
    a = (200..300).inject([]) do |result, element|
      result << (200..300).select do |num|
        sum_of_div(element) == num && sum_of_div(num) == element
      end
    end
    a.flatten
  end
end
include Abramov
puts abramov182(25)
puts abramov323(7)
