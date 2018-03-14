# abramov tasks
module Abramov
  # Даны натуральное число n , целые числа a 1 , ... , a n . Найти
  # количество и сумму тех членов данной последовательности, которые
  # делятся на 5 и не делятся на 7.
  def task_182(number)
    numbers = (1..number).select { |num| (num % 5).zero? && !(num % 7).zero? }
    { count: numbers.count, sum: numbers.inject(:+) }
  end

  # Дано натуральное число n. Получить все натуральные
  # числа, меньшие n и взаимно простые с ним.
  def task_323(num)
    arr_dividers_n = (2...num).select { |element| (num % element).zero? }
    (2...num).select { |element| arr_dividers_n.all? { |a| element % a != 0 } }
  end

  # Два натуральных числа называют дружественными, если
  # каждое из них равно сумме всех делителей другого, кроме самого
  # этого числа. Найти все пары дружественных чисел, лежащих в
  # диапазоне от 200 до 300
  def sum_of_div(number)
    (1..number / 2).find_all { |num| (number % num).zero? }.inject(:+)
  end

  def task_560
    (200..300).inject([]) do |result, el|
      (200..300).inject(result) do |arr, num|
        (sum_of_div(el) == num) && (sum_of_div(num) == el) ? arr << [el, num] : arr
      end
    end
  end
end
