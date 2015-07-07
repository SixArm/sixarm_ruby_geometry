# -*- coding: utf-8 -*-
require "minitest/autorun"
Minitest::Test ||= MiniTest::Unit::TestCase
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/volume/volume_as_vector_1d"
require "sixarm_ruby_geometry_test/fake"

class VolumeAsVector1DTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::VolumeAsVector1D
  end

  def test_0
    assert(::VolumeAsVector1D)
  end

  def test_new
    assert(C[0,0])
  end

  def test_index
    e0 = fake_n
    c = C[e0]
    assert_equal(e0, c[0])
  end

end
