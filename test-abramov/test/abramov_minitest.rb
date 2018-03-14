require 'minitest/autorun'
require 'abramov'
include Abramov

class TestAbramov < Minitest::Test
  def test_task_178_b
    assert_equal(3, task_178_b(1, 10))
  end

  def test_task_178_v
    assert_equal(3, task_178_v(1, 36))
  end

  def test_task_554
    assert_includes(task_554(16), [3, 4, 5])
  end
end
