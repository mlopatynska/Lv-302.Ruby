require 'minitest/autorun'
require './abramov'

class TestPerson < Minitest::Test
  include Abramov
  
  def test_task_89a_return_an_answer
    assert_equal(3, task_89a(15, 6))
  end

  def test_task_108_return_an_answer
    assert_equal(16, task_108(10))
  end

  def test_task_331b_return_correct_result
    assert_equal([[1, 6, 8], [2, 4, 9], [4, 6, 7]], task_331b(101))
  end

  def test_task_331b_return_message
    assert_equal("It's impossible.", task_331b(100))
  end
end
