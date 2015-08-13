# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/indexable/indexable_rad"
require "sixarm_ruby_geometry_test/fake"

class IndexableRadTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Indexable::Rad
  end

  DELTA = 0.00001

  def test_0
    assert(::Indexable::Rad)
  end

  def test_rad
    assert_in_delta(Math::PI *  0.0, C[ 1, 0].rad, DELTA)
    assert_in_delta(Math::PI *  0.5, C[ 0, 1].rad, DELTA)
    assert_in_delta(Math::PI *  1.0, C[-1, 0].rad, DELTA)
    assert_in_delta(Math::PI * -0.5, C[ 0,-1].rad, DELTA)
  end

end
