# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable/x"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class XTest < Minitest::Test

    def test_0
      assert(::Indexable::X)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::X
    end

    def test_x
      x = fake_n
      o = C[x]
      assert_equal(x, o.x)
    end

    def test_x_equal
      x = fake_n
      o = fake_indexable
      refute_equal(x, o.x)
      o.x = x
      assert_equal(x, o.x)
    end

    protected

    def fake_indexable
      C[0]
    end

  end
end
