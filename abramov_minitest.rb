require 'minitest/autorun'
require './abramov'

# tests
class TestAbramov < Minitest::Test
  include Abramov

  def test_task_87
    assert(task_87(111, 2) == 2, 'wrong answer')
    assert(task_87(111, 3) == 3, 'wrong answer')
    assert(task_87(234, 2) == 7, 'wrong answer')
  end

  def test_task_87_instance
    assert_instance_of(Integer, task_87(111, 2))
  end

  def test_task_181a
    assert(task_181a(1) == 275, 'It\'s not right')
  end

  def test_task_181a_instance
    assert_instance_of(Integer, task_181a(3))
  end

  def test_task_181a_2
    assert(task_181a(1) == 275, 'It\'s not right')
  end

  def test_task_562
    assert_includes(task_562, 407)
  end

  def test_task_562_instance
    assert_instance_of(Array, task_562)
  end
end
