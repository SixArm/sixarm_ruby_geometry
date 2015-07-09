# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_xy"
require "sixarm_ruby_geometry_test/fake"

class VectorXYTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector::XY
  end

  def test_0
    assert(::Vector::XY)
  end

  def test_x
    x = fake_n
    o = C[x,0]
    assert_equal(x, o.x)
  end

  def test_x_equal
    x = fake_n
    o = fake_vector
    refute_equal(x, o.x)
    o.x = x
    assert_equal(x, o.x)
  end

  def test_y
    y = fake_n
    o = C[0,y]
    assert_equal(y, o.y)
  end

  def test_y_equal
    y = fake_n
    o = fake_vector
    refute_equal(y, o.y)
    o.y = y
    assert_equal(y, o.y)
  end

  protected

  def fake_vector
    C[0,0]
  end

end
