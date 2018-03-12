require_relative 'often_used'
include OftenUsed

def task_108(n)
  n = natural_number(n)
  m = 2
  m *= 2 while m <= n
  puts m
end

task_108(10)
