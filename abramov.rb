# abramov tasks
module Abramov

# Даны натуральное число n , целые числа a 1 , ... , a n . Найти
# количество и сумму тех членов данной последовательности, которые
# делятся на 5 и не делятся на 7.
  def abramov182(number)
    return "wrong argument, you entered #{number.class}, #{number}" unless natural?(number)
    numbers = (1..number).select { |num| (num % 5).zero? && !(num % 7).zero? }
    { count: numbers.count, sum: numbers.inject(:+) }
  end

  # Дано натуральное число n. Получить все натуральные
  # числа, меньшие n и взаимно простые с ним.
  def abramov323(num)
    return "wrong argument, you entered #{number.class}, #{num}" unless natural?(num)
    arr_dividers_n = (2...num).select { |element| (num % element).zero? }
    (2...num).select { |element| arr_dividers_n.all? { |a| element % a != 0 } }
  end

  # helper for abramov560
  def sum_of_div(number)
    (1..number / 2).find_all { |num| (number % num).zero? }.inject(:+)
  end

  # Два натуральных числа называют дружественными, если
  # каждое из них равно сумме всех делителей другого, кроме самого
  # этого числа. Найти все пары дружественных чисел, лежащих в
  # диапазоне от 200 до 300
  def abramov560
    a = (200..300).inject([]) do |result, element|
      result << (200..300).select do |num|
        sum_of_div(element) == num && sum_of_div(num) == element
      end
    end
    a.flatten
  end
end
# checking natural number
def natural?(num)
  num.is_a?(Integer) && (num > 0) ? true : false
end
