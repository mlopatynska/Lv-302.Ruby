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
    m = 2
    m *= 2 while m <= n
    m
  end

  # Дано натуральное число n. Можно ли представить
  # его в виде суммы трех квадратов натуральных чисел?
  # Если можно, то указать все тройки x, y, z таких
  # натуральных чисел, что n = x^2 + y^2 + z^2.
  def task_331b(n)
    arr = []
    (1..n).to_a.repeated_combination(3).each do |el|
      arr << el.to_s if el[0]**2 + el[1]**2 + el[2]**2 == n
    end
    arr.count.zero? ? "It's impossible." : arr
  end
end
