# Abramov tasks
module Abramov
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
    (2..n).inject([]){ |result, number| ((2...number).map{ |x| number % x }).include?(0) ? result : result << number }
  end
end

