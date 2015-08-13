# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/space_as_vector_nd"
require "sixarm_ruby_geometry_test/fake"

class SpaceAsVectorNDTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::SpaceAsVectorND
  end

  def test_0
    assert(::SpaceAsVectorND)
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
