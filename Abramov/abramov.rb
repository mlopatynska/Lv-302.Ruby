load 'Functions.rb'
include Functions

def square(n)
  k = -1
  square = n**2
    while square > 1
      square /= 10
      k += 1
    end
  tmp = (n**2) / (10.0**k)
  res = ((tmp - tmp.to_i) * (10**k)).to_i
  res == n ? true : false
end

def task_224(n)
  arr = []
 (2..n).each do |num|
   arr << num  if  is_simple?(num) && natural?(num)
   end
    puts "#{arr}"
end

def task_325(n)
	arr = []
  (2..n).each do |num|
  if	is_simple?(num)
    arr << num
  end
 end
 puts "#{is_divider?(n) & arr}"
end

def task_561(n)
  arr = []
	(1..n).each do |a|
		 arr << a if square?(a)
	end
  puts "#{arr}"
end
task_224(54)
task_325(126)
task_561(25)