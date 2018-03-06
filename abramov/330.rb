def perfect_num?(n)
  n == (1...n).inject(0) { |sum, x| sum += x if (n % x).zero?; sum }
end

def get_all_perfect(n)
  (2...n).inject([]) do |perfect, x|
    perfect << x if perfect_num?(x)
	perfect
  end
end
puts get_all_perfect(30)