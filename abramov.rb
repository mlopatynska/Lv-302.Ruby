# hello
module Abramov
# 88. Дано натуральное число n.
# в) Переставить первую и последнюю цифры числа n.
  def task_88v(n)
    string_n = n.to_s
    string_n[0], string_n[-1] = string_n[-1], string_n[0]
    string_n.to_i
  end

  def square_sum(n)
    (n.to_s.split(//).inject(0) { |sum, x| sum + x.to_i })**2
  end
# 329. Даны натуральные числа n, m. Получить все меньшие n
# натуральные числа, квадрат суммы цифр которых равен m.
  def task_329(n, m)
    (1...n).inject([]) do |arr, x|
      square_sum(x) == m ? arr << x : arr
    end
  end
# 562. Натуральное число из n цифр является числом Армстронга,
# если сумма его цифр, возведенных в n-ю степень, равна самому числу(как, например, 153 = 1 3 + 5 3 + 3 3 ).
  def task_562(n)
    n_length = n.to_s.length
    n == n.to_s.split(//).inject(0) { |sum, x| sum + x.to_i**n_length }
  end
end
