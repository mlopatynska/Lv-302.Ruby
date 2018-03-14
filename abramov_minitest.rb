require 'minitest/autorun'
require 'abramov'
include Abramov

class TestAbramov < Minitest::Test
	def test_task_88a
		assert_equal(true, task_88a(6))
	end

	def test_task_322
		assert_equal(960, task_322(1000))
	end

	def test_task_330
		assert_includes([[6,28]], task_330(100))
	end
end
