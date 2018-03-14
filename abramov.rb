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

  def abramov (n)
    (2..n).inject([]){ |result, number| ((2...number).map{ |x| number % x }).include?(0) ? result : result << number }
  end
end
