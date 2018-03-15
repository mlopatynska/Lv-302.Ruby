require 'minitest/autorun'
require_relative 'abramov'


class TestAbramov < Minitest::Test
  include Abramov

  def test_abramov182_return_right
    assert_equal({:count=>4, :sum=>50}, task_182(20))
  end

  def test_abramov182_right_instance
    assert_instance_of(Hash, task_182(30))
  end

  def test_abramov323
    assert_equal([3,7,9], task_323(10))
  end

  def test_abramov323_instance
    assert_instance_of(Array, task_323(30))
  end

  def test_abramov560
   assert_equal([[220,284],[284,220]], task_560)
  end

   def test_abramov560_instance
    assert_instance_of(Array, task_560)
  end
end