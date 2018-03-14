require 'minitest/autorun'
require './abramov'

# tests
class TestAbramov < Minitest::Test
  include Abramov

  def test_task_87
    assert(abramov_87(111, 2) == 2, 'wtf?')
  end

  def test_task_87_instance
    assert_instance_of(Integer, abramov_87(111, 2))
  end

  def test_task_181a
    assert(abramov_181a(1.to_i) == 275, 'It\'s not right')
  end

  def test_task_181a_2
    assert(abramov_181a(1) == 275, 'It\'s not right')
  end

  def test_task_562
    assert_includes(abramov_562, 407)
  end
end
