# Abramov tasks solved
module Abramov
  def abramov_87(n_num, m_num)
    array = n_num.to_s.split('')
    array.slice(- m_num, m_num).inject(0) { |sum, digit| sum + digit.to_i }
  end

  def abramov_181a(start)
    (start..start + 49).select { |num| (num % 5).zero? }.inject(:+)
  end

  def abramov_181a_2(start)
    range = (start..start + 49)
    range.inject(0) { |sum, num| (num % 5).zero? ? sum + num : sum }
  end

  def abramov_562
    (10..9999).find_all { |num| armstrong?(num) }
  end

  def armstrong?(num)
    power = num.to_s.length
    num.to_s.split('').inject(0) { |sum, digit| sum + digit.to_i**power } == num
  end
end
