require 'minitest/autorun'
require './abramov'

# MiniTest
class TestAbramov < Minitest::Test
  include Abramov
  
  def test_task_88a
    assert_equal(true, task_88a(6))
  end

  def test_task_322
    assert_equal(960, task_322(1000))
  end

  def test_task_330
    assert_equal([6, 28], task_330(100))
  end
end
