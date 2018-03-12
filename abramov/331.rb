require_relative 'often_used'
include OftenUsed

def task_331b(n)
  n = natural_number(n)
  # якщо всі можливі комбінації чисел:
  # arr.repeated_permutation(3).to_a.each do |el|
  # якщо унікальні трійки:
  arr = []
  (1..n).to_a.repeated_combination(3).to_a.each do |el|
    arr << "#{el}" if el[0]**2 + el[1]**2 + el[2]**2 == n
  end
  puts arr.count.zero? ? "It's impossible." : arr
end

task_331b(101)
