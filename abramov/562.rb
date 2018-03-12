def armstrong?(n)
  n_length = n.to_s.length
  n == n.to_s.split(//).inject(0) { |sum, x| sum += (x.to_i)**n_length }
end

puts armstrong?(407)
