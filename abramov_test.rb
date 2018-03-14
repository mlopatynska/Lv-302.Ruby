require 'minitest/autorun'
require './abramov.rb'

class TestAbramovTasks < Minitest::Unit::TestCase
include Abramov
def test_task_88v
  assert_equal(28, task_88v(82))
end
def test_task_329
  assert_equal([6, 15, 24, 33, 42, 51, 60, 105, 114], task_329(123, 36))
end
def test_task_562
  assert_equal(false, task_562(555))
end
end
