# -*- coding: utf-8 -*-
require "minitest/autorun"
Minitest::Test ||= MiniTest::Unit::TestCase
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_yaw"
require "sixarm_ruby_geometry_test/fake"

class VectorYawTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector::Yaw
  end

  DELTA = 0.00001

  def test_0
    assert(::Vector::Yaw)
  end

  def test_yaw
    assert_in_delta(Math::PI *  0.0, C[ 1,  0, fake_f].yaw, DELTA)
    assert_in_delta(Math::PI * -0.5, C[ 0,  1, fake_f].yaw, DELTA)
    assert_in_delta(Math::PI *  1.0, C[-1,  0, fake_f].yaw, DELTA)
    assert_in_delta(Math::PI *  0.5, C[ 0, -1, fake_f].yaw, DELTA)
  end

end
