# abramov tasks
module Abramov
  # Дано натуральні числа n, a1, ..., an. Оприділити кількість членів
  # кратних 3 і не кратних 5
  def task_178_b(num1, num2)
    (num1..num2).select { |number| (number % 3).zero? && number % 5 != 0 }.count
  end

  # Дано натуральні числа n, a1, ..., an. Оприділити кількість членів
  # які є квадратами парних чисел
  def task_178_v(num1, num2)
    (num1..num2).select { |number| (Math.sqrt(number) % 2).zero? }.count
  end

  # Дано натуральне число n, получити всі піфагорові трійки натуральних чисел,
  # кожне з яких менше n, тобто всі такі трійки натуральних чисел a, b, c,
  # що a**2 + b**2 = c**2 (a<=b<=c<=n).
  def task_554(num)
    (1..num).to_a.repeated_combination(3).inject([]) do |result, elem|
      elem[0]**2 + elem[1]**2 == elem[2]**2 ? result << elem : result
    end
  end
end
