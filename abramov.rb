# Functions for abramov tasks
module Abramov
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
    arr = []
    (2..n).each do |num|
      arr << num if simple?(num) && natural?(num)
    end
    arr
  end

# 325. Дано натуральне число n. Дістати всі прості дільники.
  def task_325(n)
    arr = []
    (2..n).each do |num|
      arr << num if simple?(num)
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
