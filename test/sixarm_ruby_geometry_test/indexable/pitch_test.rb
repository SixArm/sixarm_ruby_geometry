# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/indexable/pitch"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class PitchTest < Minitest::Test

    def test_0
      assert(::Indexable::Pitch)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::Pitch
    end

    DELTA = 0.00001

    def test_pitch_with_xy_any_and_z_zero
      assert_in_delta(Math::PI *  0.0, C[fake_n, fake_n,  0].pitch, DELTA)
    end

    def test_pitch_with_xy_zero_and_z_positive
      assert_in_delta(Math::PI *  0.5, C[ 0, 0,  fake_n].pitch, DELTA)
    end

    def test_pitch_with_xy_zero_and_z_negative
      assert_in_delta(Math::PI * -0.5, C[ 0, 0, -fake_n].pitch, DELTA)
    end

  end
end
