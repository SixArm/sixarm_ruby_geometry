# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/indexable/indexable_1d"
require "sixarm_ruby_geometry_test/fake"

class Indexable1DTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Indexable1D
  end

  def test_0
    assert(::Indexable1D)
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
