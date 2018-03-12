# Abramov tasks
module Abramov
  def task_89a(m, n)
    until n.zero?
      r = m % n
      m = n
      n = r
    end
    puts "The greatest common divisor is #{m}"
  end

  def task_108(n)
    m = 2
    m *= 2 while m <= n
    puts m
  end

  def task_331b(n) # rubocop:disable Metrics/AbcSize
    arr = []
    (1..n).to_a.repeated_combination(3).each do |el|
      arr << el.to_s if el[0]**2 + el[1]**2 + el[2]**2 == n
    end
    puts arr.count.zero? ? "It's impossible." : arr
  end
end
