# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable/width"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class WidthTest < Minitest::Test

    def test_0
      assert(::Indexable::Width)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::Width
    end

    def test_width
      width = fake_n
      o = C[width,0]
      assert_equal(width, o.width)
    end

    def test_width_equal
      width = fake_n
      o = fake_indexable
      refute_equal(width, o.width)
      o.width = width
      assert_equal(width, o.width)
    end

    protected

    def fake_indexable
      C[0]
    end

  end
end
