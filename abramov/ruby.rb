#!/usr/bin/env ruby
require_relative "check_input"
include CheckData

def task_178_b(num1, num2)
  check_data(num1)
  check_data(num2)
  (num1..num2).select { |number| (number % 3).zero? && number % 5 != 0 }.count
end
# p task_178_b(1, 100)


def task_178_v(num1, num2)
  check_data(num1)
  check_data(num2)
  (num1..num2).select { |number| Math.sqrt(number) % 2 == 0 }.count
end
# p task_178_v(1, 36)

def task_554(num)
  check_data(num)
  result = []
  (1..num).each do |a|
    (a.next..num).each do |b|
      (b.next..num).each do |c|
        result << "#{a}, #{b}, #{c}" if (a**2 + b**2 == c**2)
      end
    end 
  end
  p result
end
# task_554(16)