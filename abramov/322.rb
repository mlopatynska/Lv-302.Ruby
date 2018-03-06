
def sum_dividers(n)
  (1..n).inject(0) { |sum, x| sum += x if (n % x).zero?; sum }
end

sum_hash = (1..10_000).inject({}) { |sum, x| sum[x] = sum_dividers(x); sum }
puts sum_hash.key(sum_hash.values.max)
