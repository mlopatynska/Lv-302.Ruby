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

def task_331b(n)
  arr = []
  (1..n).to_a.repeated_combination(3).to_a.each do |el|
    arr << "#{el}" if el[0]**2 + el[1]**2 + el[2]**2 == n
  end
  puts arr.count.zero? ? "It's impossible." : arr
end

def task_178_b(num1, num2)
  (num1..num2).select { |number| (number % 3).zero? && number % 5 != 0 }.count
end

def task_178_v(num1, num2)
  (num1..num2).select { |number| Math.sqrt(number) % 2 == 0 }.count
end

def task_554(num)
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
