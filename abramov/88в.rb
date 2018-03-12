
def swap_first_and_last(n)
  string_n = n.to_s
  string_n[0], string_n[-1] = string_n[-1], string_n[0]
  string_n.to_i
end

puts swap_first_and_last('abcd')