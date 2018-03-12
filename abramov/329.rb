def square_sum(n)
  (n.to_s.split(//).inject(0) { |sum, x| sum += x.to_i })**2
end
def lesser_n_and_equal_m2(n, m)
  (1...n).inject([]) do |arr, x|
  	square_sum(x) == m ? arr << x : arr
  end
end

puts lesser_n_and_equal_m2(123, 36)