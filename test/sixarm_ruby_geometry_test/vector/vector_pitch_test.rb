# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_pitch"
require "sixarm_ruby_geometry_test/fake"

class VectorPitchTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector::Pitch
  end

  DELTA = 0.00001

  def test_0
    assert(::Vector::Pitch)
  end

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
