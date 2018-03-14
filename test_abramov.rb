require 'minitest/autorun'
require './abramov'

# minitest
class TestAbramov < Minitest::Test
  include Abramov
  def test_task_86b
    assert_equal(1, task_86b(10))
  end

  def test_task_324
    assert(task_324(2, 5) == [5])
  end

  def test_task_557
    assert_includes([[2, 3, 5, 7]], task_557(10))
  end
end
