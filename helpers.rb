# helper for abramov560
module Helper
  def sum_of_div(number)
    (1..number / 2).find_all { |num| (number % num).zero? }.inject(:+)
  end

  def enter_prompt(name)
    if arg_count(name) == 1
      puts "\nEnter 1 natural number:"
    elsif arg_count(name) > 1
      puts "\nEnter #{arg_count(name)} natural numbers devided by space:"
    else
      puts "\nThis problem does not require arguments, press Enter to continue"
    end
  end

  def arg_count(func)
    method(func).arity
  end

  def input_check(func, entered_values)
    if arg_count(func) == entered_values.count
      true
    else
      puts "You have entered wrong number of arguments, please try again"
      false
    end
  end

  def natural?(num)
    if num.is_a?(Integer) && num > 0
      true
    else
      puts "Your number(s) are not natural"
      false
    end
  end

  def natural_check(arr)
    arr.inject(true){ |pass, value| pass && natural?(value) }
  end

  def armstrong?(num)
    power = num.to_s.length
    num.to_s.split('').inject(0) { |sum, digit| sum + digit.to_i**power } == num
  end
end
