# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable/rad"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class RadTest < Minitest::Test

    def test_0
      assert(::Indexable::Rad)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::Rad
    end

    DELTA = 0.00001

    def test_rad
      assert_in_delta(Math::PI *  0.0, C[ 1, 0].rad, DELTA)
      assert_in_delta(Math::PI *  0.5, C[ 0, 1].rad, DELTA)
      assert_in_delta(Math::PI *  1.0, C[-1, 0].rad, DELTA)
      assert_in_delta(Math::PI * -0.5, C[ 0,-1].rad, DELTA)
    end

  end
end
