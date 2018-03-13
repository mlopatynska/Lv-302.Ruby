# Abramov tasks
module Abramov
  def sum_number(num)
    num.to_s.split(//).inject(0) { |sum, x| sum + x.to_i }
  end

  def deviders(num)
    (2..num).inject([]) { |dev, x| dev << x if (num % x).zero? dev }
  end

  def deviders_p(sum, num)
    q_deviders = deviders(num)
    p_deviders = deviders(sum)
    q_deviders
      .inject([]) { |dev, n| (p_deviders & deviders(n)) == [] ? dev << n : dev }
  end

  def primes(num)
    integers = []
    i = 2
    while i <= num
      integers << i
      i += 1
    end
    index = 0
    multiplier = 2
    until integers[index].nil?
      while (integers[index] * multiplier) <= num
        integers.delete(integers[index] * multiplier)
        multiplier += 1
      end
      index += 1
      multiplier = 2
    end
    p integers
  end
end
