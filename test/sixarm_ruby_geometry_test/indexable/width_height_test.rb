# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/indexable/width_height"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class WidthHeightTest < Minitest::Test

    def test_0
      assert(::Indexable::WidthHeight)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::WidthHeight
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

    def test_height
      height = fake_n
      o = C[0,height]
      assert_equal(height, o.height)
    end

    def test_height_equal
      height = fake_n
      o = fake_indexable
      refute_equal(height, o.height)
      o.height = height
      assert_equal(height, o.height)
    end

    protected

    def fake_indexable
      C[0,0]
    end

  end
end
