module Functions
	
def natural?(n)
  n.is_a?(Integer) && n > 0 ? true : false
end
def is_simple?(n)
   (2...n).all? {|num| n % num != 0 } ? true : false
end

def is_divider?(n)
  arr = (1..n).inject([]) do |i, x|
		(n % x).zero? ? i << x : i
	end
	arr
end

def square?(n)
  str = n.to_s
  str2 = (n**2).to_s
  str2.end_with?(str) ? true : false
end

end