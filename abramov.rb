module Abramov
def task_88в(n)
  string_n = n.to_s
  string_n[0], string_n[-1] = string_n[-1], string_n[0]
  string_n.to_i
end

def square_sum(n)
  (n.to_s.split(//).inject(0) { |sum, x| sum += x.to_i })**2
end
def task_329(n, m)
  (1...n).inject([]) do |arr, x|
  	square_sum(x) == m ? arr << x : arr
  end
end

def task_562(n)
  n_length = n.to_s.length
  n == n.to_s.split(//).inject(0) { |sum, x| sum += (x.to_i)**n_length }
end
end