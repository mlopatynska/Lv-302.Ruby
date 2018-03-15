module Helper
  # helper for abramov560
  def sum_of_div(number)
    (1..number / 2).find_all { |num| (number % num).zero? }.inject(:+)
  end
end