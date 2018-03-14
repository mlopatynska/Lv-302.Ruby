module Abramov
  def task_87(n_num, m_num)
    array = n_num.to_s.split('')
    array.slice(- m_num, m_num).inject(0) { |sum, digit| sum + digit.to_i }
  end

  def task_182(number)
    numbers = (1..number).select { |num| (num % 5).zero? && !(num % 7).zero? }
    { count: numbers.count, sum: numbers.inject(:+) }
  end

  def task_323(num)
    arr_dividers_n = (2...num).select { |element| (num % element).zero? }
    (2...num).select { |element| arr_dividers_n.all? { |a| element % a != 0 } }
  end

  def task_560
    (200..300).inject([]) do |result, el|
      (200..300).inject(result) do |arr, num|
        (sum_of_div(el) == num) && (sum_of_div(num) == el) ? arr << [el, num] : arr
      end
    end
  end

  def task_181a(start)
    (start..start + 49).select { |num| (num % 5).zero? }.inject(:+)
  end

  def task_562
    (10..9999).find_all { |num| armstrong?(num) }
  end

  def task_108(n)
    (1..n).each { |x| return 2**x if 2**x > n }
  end

  def task_331b(n)
    array = (1..n).to_a.repeated_combination(3).inject([]) do |arr, el|
      el[0]**2 + el[1]**2 + el[2]**2 == n ? arr << el.to_s : arr
    end
    array.count.zero? ? "It's impossible." : array
  end

  def task_89a(m, n)
    until n.zero?
      r = m % n
      m = n
      n = r
    end
    m
  end

  def task_178b(num1, num2)
    (num1..num2).select { |number| (number % 3).zero? && number % 5 != 0 }.count
  end

  def task_178v(num1, num2)
    (num1..num2).select { |number| (Math.sqrt(number) % 2).zero? }.count
  end

  def task_554(num)
    (1..num).to_a.repeated_combination(3).inject([]) do |result, elem|
      elem[0]**2 + elem[1]**2 == elem[2]**2 ? result << elem : result
    end
  end
end
