require 'minitest/autorun'
require './abramov'
include Abramov

class TestAbramov < Minitest::Test
	def test_task_178b
		assert_equal(3, task_178b(1, 10))
	end

  def test_task_178v
    assert_equal(3, task_178v(1, 36))
  end

  def test_task_554
    assert_includes(task_554(16), [3, 4, 5])
  end
end
