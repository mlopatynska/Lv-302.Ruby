# module
module Abramov
  def task_88_a(num)
    puts(num * num).to_s.include?('3')
  end

  def val_sum(num)
    (1...num).inject(0) { |sum, x| (num % x).zero? ? sum + x : sum }
  end

  def task_322(num)
    hash = {}
    (2...num).each { |num1| hash[num1.to_s] = val_sum(num) }
    hash.key(hash.values.max).to_i
  end

  def task_330(num)
    (1...num).find_all { |arr| puts arr if arr == val_sum(arr) }
  end
end
