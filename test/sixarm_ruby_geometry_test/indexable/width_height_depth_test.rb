# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/indexable/width_height_depth"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class WidthHeightDepthTest < Minitest::Test

    def test_0
      assert(::Indexable::WidthHeightDepth)
    end

    require "matrix"
    class C < Vector
      include ::Indexable::WidthHeightDepth
    end

    def test_width
      width = fake_n
      o = C[width, 0, 0]
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
      o = C[0, height, 0]
      assert_equal(height, o.height)
    end

    def test_height_equal
      height = fake_n
      o = fake_indexable
      refute_equal(height, o.height)
      o.height = height
      assert_equal(height, o.height)
    end

    def test_depth
      depth = fake_n
      o = C[0, 0, depth]
      assert_equal(depth, o.depth)
    end

    def test_depth_equal
      depth = fake_n
      o = fake_indexable
      refute_equal(depth, o.depth)
      o.depth = depth
      assert_equal(depth, o.depth)
    end

    protected

    def fake_indexable
      C[0,0,0]
    end

  end
end
