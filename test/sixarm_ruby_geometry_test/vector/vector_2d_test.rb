# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_2d"
require "sixarm_ruby_geometry_test/fake"

class Vector2DTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector2D
  end

  def test_0
    assert(::Vector2D)
  end

  def test_new
    assert(C[0, 0])
  end

  def test_index
    e0 = fake_n
    e1 = fake_n
    c = C[e0, e1]
    assert_equal(e0, c[0])
    assert_equal(e1, c[1])
  end

end
