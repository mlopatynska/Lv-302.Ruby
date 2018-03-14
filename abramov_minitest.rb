require 'minitest/autorun'
require './abramov'

class TestClass < Minitest::Test
  include Abramov
  def test_task_224
    assert_instance_of(Array, task_224(16))
    assert(task_224(16) == [1, 2, 4, 8, 16])
    assert(task_224(17) != [3, 5, 8])
    assert(task_224(21.2) == [])
    assert_equal(task_224(-10), [])
  end

  def test_task_325    
    assert_instance_of(Array, task_325(17))
    assert(task_325(20) == [2,5])
    assert(task_325(20) != [3, 5, 8])
    assert(task_325(11.7) == [])
    assert_equal(task_325(-4), [])
  end

  def test_task_561
    assert_instance_of(Array, task_561(8))
    assert(task_561(6) == [1, 5, 6])
    assert(task_561(6) != [3, 7, 8])
    assert(task_561(17.4) == [1, 5, 6])
    assert_equal(task_561(-15), [])
  end
end
