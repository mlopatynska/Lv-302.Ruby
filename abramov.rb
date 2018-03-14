# Abramov tasks
module Abramov
  # Даны натуральные числа n, m.
  # Используя алгоритм Евклида, найти
  # наибольший общий делитель n и m.
  def task_89a(m, n)
    until n.zero?
      r = m % n
      m = n
      n = r
    end
    m
  end

  # Дано натуральное число n. Получить наименьшее
  # число вида 2 r , превосходящее n.
  def task_108(n)
    (1..n).each { |x| return 2**x if 2**x > n }
  end

  # Дано натуральное число n. Можно ли представить
  # его в виде суммы трех квадратов натуральных чисел?
  # Если можно, то указать все тройки x, y, z таких
  # натуральных чисел, что n = x^2 + y^2 + z^2.
  def task_331b(n)
    array = (1..n).to_a.repeated_combination(3).inject([]) do |arr, el|
      el[0]**2 + el[1]**2 + el[2]**2 == n ? arr << el.to_s : arr
    end
    array.count.zero? ? "It's impossible." : array
  end
end
