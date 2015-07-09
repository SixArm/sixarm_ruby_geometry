# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_whd"
require "sixarm_ruby_geometry_test/fake"

class VectorWHDTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector::WHD
  end

  def test_0
    assert(::Vector::WHD)
  end

  def test_width
    width = fake_n
    o = C[width, 0, 0]
    assert_equal(width, o.width)
  end

  def test_width_equal
    width = fake_n
    o = fake_vector
    refute_equal(width, o.width)
    o.width = width
    assert_equal(width, o.width)
  end

  def test_height
    height = fake_n
    o = C[0, height, 0]
    assert_equal(height, o.height)
  end

  def test_height_equal
    height = fake_n
    o = fake_vector
    refute_equal(height, o.height)
    o.height = height
    assert_equal(height, o.height)
  end

  def test_depth
    depth = fake_n
    o = C[0, 0, depth]
    assert_equal(depth, o.depth)
  end

  def test_depth_equal
    depth = fake_n
    o = fake_vector
    refute_equal(depth, o.depth)
    o.depth = depth
    assert_equal(depth, o.depth)
  end

  protected

  def fake_vector
    C[0,0,0]
  end

end
