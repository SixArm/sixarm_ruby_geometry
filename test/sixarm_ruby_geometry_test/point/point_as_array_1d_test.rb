# -*- coding: utf-8 -*-
require "minitest/autorun"
Minitest::Test ||= MiniTest::Unit::TestCase
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/point/point_as_array_1d"
require "sixarm_ruby_geometry_test/fake"

class PointAsArray1DTest < Minitest::Test

  class C < Array
    include ::PointAsArray1D
  end

  def test_0
    assert(::PointAsArray1D)
  end

  def test_new
    assert(C[0])
  end

  def test_index
    e0 = fake_n
    c = C[e0]
    assert_equal(e0, c[0])
  end

end
