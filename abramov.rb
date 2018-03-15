module Abramov
  # Дано натуральное число n. Выяснить,
  # входить ли цифра 3 в запись числа n^2
  def task_88a(num)
    (num * num).to_s.include?('3')
  end

  def val_sum(num)
    (1...num).inject(0) { |sum, x| (num % x).zero? ? sum + x : sum }
  end

  # Найти натуральное число от 1 до 10 000
  # с максимальной суммой делителей
  def task_322(num)
    sum_hash = (1..num).inject({}) { |sum, x| sum[x] = val_sum(x); sum }
    sum_hash.key(sum_hash.values.max)
  end

  # Натуральное число называется совершенным, если оно равно сумме всех своих делителей,
  # за исключением себя самого. Число 6 – совершенное, так как 6 = 1+2+3. Число 8 – несовершенное,
  # так как 8 ≠ 1+2+4. Дано натуральное число n. Получить все совершенные числа, меньше n.
  def task_330(num)
    (1...num).find_all { |arr| arr if arr == val_sum(arr) }
  end

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

  # 86. Дано натуральное число n: б) Чему равна сумма его цифр?
  def task_86b(num)
    num.to_s.split(//).inject(0) { |sum, x| sum + x.to_i }
  end

  # 324. Даны целые числа p и q. Получить все делители числа q, взаимно простые с p.
  def deviders(num)
    (2..num).inject([]) { |dev, x| (num % x).zero? ? dev << x : dev }
  end

  def task_324(sum, num)
    deviders(num).inject([]) { |dev, n| (deviders(sum) & deviders(n)) == [] ? dev << n : dev }
  end

  # 557. Дано натуральное число n (n ≥ 2). Найти все меньшие n простые числа, используя решето Эратосфена.
  def task_557(n)
    (2..n).inject([]) { |result, number| ((2...number).map { |x| number % x }).include?(0) ? result : result << number }
  end

  def natural?(n)
    n.is_a?(Integer) && n > 0
  end

  def divider(n)
    (1..n).inject([]) do |i, x|
      (n % x).zero? ? i << x : i
    end
  end

  def simple?(n)
    (2...n).all? { |num| n % num != 0 }
  end

  def square?(n)
    (n**2).to_s.end_with?(n.to_s)
  end

  # 224. Дано натуральне число n. Дістати всі натуральні дільники.
  def task_224(n)
    (2..n).inject([]) do |arr, a|
      simple?(a) && natural?(a) ? arr << a : arr
    end
  end

  # 325. Дано натуральне число n. Дістати всі прості дільники.
  def task_325(n)
    arr = (2..n).inject([]) do |mas, a|
      simple?(a) ? mas << a : mas
    end
    arr & divider(n)
  end

  # 561. Дано натуральне число n. Серед чисел 1, ..., n найти всі
  # такі, запис котрих співпадає з останніми цифрами запису їх
  # квадрата (наприклад, 6 2 = 36, 25 2 = 625 и т. д.).
  def task_561(n)
    (1..n).inject([]) do |arr, a|
      square?(a) ? arr << a : arr
    end
  end
end
