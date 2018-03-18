# Abramov tasks solved
module Abramov
  #Даны натуральное n, m. Получить сумму m последних цифр числа n.
  def task_87(n_num, m_num)
    if digit_check(n_num, m_num)
      array = n_num.to_s.split('')
      array.slice(- m_num, m_num).inject(0) { |sum, digit| sum + digit.to_i }
    else
      puts "Your number of last digits(m) is bigger then number(n). It's impossible."
    end
  end

  # Даны целые числа a 1 , ... , a 50 . Получить сумму тех чисел данной последовательности, которые:
  # а) кратны 5;
  def task_181a(start)
    (start..start + 49).select { |num| (num % 5).zero? }.inject(:+)
  end

  def task_181a_2(start)
    range = (start..start + 49)
    range.inject(0) { |sum, num| (num % 5).zero? ? sum + num : sum }
  end
  
  #Натуральное число из n цифр является числом Армстронга,
  #если сумма его цифр, возведенных в n-ю степень, равна самому числу(как, например, 153 = 1**3 + 5**3 + 3**3 ). Получить все числа Армстронга,
  #состоящие из двух, трех и четырех цифр
  def task_562
    (10..9999).find_all { |num| armstrong?(num) }
  end

  def armstrong?(num)
    power = num.to_s.length
    num.to_s.split('').inject(0) { |sum, digit| sum + digit.to_i**power } == num
  end

  def digit_check(digits, last_digits)
    digits.to_s.length >= last_digits
  end
end
