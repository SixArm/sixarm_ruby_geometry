# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/space_as_array_2d"
require "sixarm_ruby_geometry_test/fake"

class SpaceAsArray2DTest < Minitest::Test

  class C < Array
    include ::SpaceAsArray2D
  end

  def test_0
    assert(::SpaceAsArray2D)
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
