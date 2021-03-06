# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable/xy"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class XYTest < Minitest::Test

    def test_0
      assert(::Indexable::XY)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::XY
    end

    def test_x
      x = fake_n
      o = C[x,0]
      assert_equal(x, o.x)
    end

    def test_x_equal
      x = fake_n
      o = fake_indexable
      refute_equal(x, o.x)
      o.x = x
      assert_equal(x, o.x)
    end

    def test_y
      y = fake_n
      o = C[0,y]
      assert_equal(y, o.y)
    end

    def test_y_equal
      y = fake_n
      o = fake_indexable
      refute_equal(y, o.y)
      o.y = y
      assert_equal(y, o.y)
    end

    protected

    def fake_indexable
      C[0,0]
    end

  end
end
