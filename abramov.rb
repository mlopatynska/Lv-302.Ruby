# Functions for abramov tasks
module Abramov
  def natural?(n)
    n.is_a?(Integer) && n > 0
  end

  def simple?(n)
    (2...n).all? { |num| n % num != 0 }
  end

  def divider(n)
    (1..n).inject([]) do |i, x|
      (n % x).zero? ? i << x : i
    end
  end

  def square?(n)
    (n**2).to_s.end_with?(n.to_s)
  end
end
