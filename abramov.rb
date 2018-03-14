# Functions for abramov tasks
module Abramov
# 224. Дано натуральне число n. Дістати всі натуральні дільники.
  def natural?(n)
    n.is_a?(Integer) && n > 0
  end

    def divider(n)
    (1..n).inject([]) do |i, x|
      (n % x).zero? ? i << x : i
    end
  end

# 325. Дано натуральне число n. Дістати всі прості дільники.
  def simple?(n)
    (2...n).all? { |num| n % num != 0 }
  end

# 561. Дано натуральне число n. Серед чисел 1, ..., n найти всі
# такі, запис котрих співпадає з останніми цифрами запису їх
# квадрата (наприклад, 6 2 = 36, 25 2 = 625 и т. д.).
  def square?(n)
    (n**2).to_s.end_with?(n.to_s)
  end
end
