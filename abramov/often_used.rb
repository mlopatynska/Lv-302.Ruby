module OftenUsed
  def natural_number(num)
    while !(num.is_a?(Integer) && num > 0)
      puts "This isn't natural number. Enter new number:"
      num = gets.chomp.to_i
    end
    num
  end
end
