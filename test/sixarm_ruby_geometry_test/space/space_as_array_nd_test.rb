# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/space_as_array_nd"
require "sixarm_ruby_geometry_test/fake"

class SpaceAsArrayNDTest < Minitest::Test

  class C < Array
    include ::SpaceAsArrayND
  end

  def test_0
    assert(::SpaceAsArrayND)
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
