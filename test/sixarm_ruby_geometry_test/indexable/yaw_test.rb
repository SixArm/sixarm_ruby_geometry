# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable/yaw"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class YawTest < Minitest::Test

    def test_0
      assert(::Indexable::Yaw)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::Yaw
    end

    DELTA = 0.00001

    def test_yaw
      assert_in_delta(Math::PI *  0.0, C[ 1,  0, fake_f].yaw, DELTA)
      assert_in_delta(Math::PI * -0.5, C[ 0,  1, fake_f].yaw, DELTA)
      assert_in_delta(Math::PI *  1.0, C[-1,  0, fake_f].yaw, DELTA)
      assert_in_delta(Math::PI *  0.5, C[ 0, -1, fake_f].yaw, DELTA)
    end

  end
end
