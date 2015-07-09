# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_wh"
require "sixarm_ruby_geometry_test/fake"

class VectorWHTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector::WH
  end

  def test_0
    assert(::Vector::WH)
  end

  def test_width
    width = fake_n
    o = C[width,0]
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
    o = C[0,height]
    assert_equal(height, o.height)
  end

  def test_height_equal
    height = fake_n
    o = fake_vector
    refute_equal(height, o.height)
    o.height = height
    assert_equal(height, o.height)
  end

  protected

  def fake_vector
    C[0,0]
  end

end
