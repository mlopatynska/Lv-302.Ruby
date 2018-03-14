# module
module Abramov
  # Дано натуральное число n. Выяснить,
  # входить ли цифра 3 в запись числа n^2
  def task_88_a(num)
    (num * num).to_s.include?('3')
  end

  def val_sum(num)
    (1...num).inject(0) { |sum, x| (num % x).zero? ? sum + x : sum }
  end

  # Найти натуральное число от 1 до 10 000
  # с максимальной суммой делителей
  def task_322(num)
    hash = {}
    (2...num).each { |num1| hash[num1.to_s] = val_sum(num1) }
    hash.key(hash.values.max).to_i
  end
  
  # Натуральное число называется совершенным, если оно равно сумме всех своих делителей,
  # за исключением себя самого. Число 6 – совершенное, так как 6 = 1+2+3. Число 8 – несовершенное,
  # так как 8 ≠ 1+2+4. Дано натуральное число n. Получить все совершенные числа, меньше n.
  def task_330(num)
    (1...num).find_all { |arr| arr if arr == val_sum(arr) }
  end
end
