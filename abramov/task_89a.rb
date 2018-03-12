require_relative 'often_used'
include OftenUsed

def task_89a(m, n)
  m = natural_number(m)
  n = natural_number(n)
  until n.zero?
    r = m % n
    m = n
    n = r
  end
  puts "The greatest common divisor is #{m}"
end

task_89a(15, 6)
# puts 15.gcd(6)
