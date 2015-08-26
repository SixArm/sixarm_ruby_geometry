# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/point/array"
require "sixarm_ruby_geometry_test/fake"

module Point
  module Array
    class Test < Minitest::Test

      def test_0
        assert(::Point::Array)
      end

      class C < ::Array
        include ::Point::Array
      end

      def test_new
        assert(C[0])
      end

      def test_index
        e0 = fake_n
        c = C[e0]
        assert_equal(e0, c[0])
      end

      def test_plus
        a0 = fake_n
        a1 = fake_n
        a = C[a0, a1]
        b0 = fake_n
        b1 = fake_n
        b = C[b0, b1]
        c0 = a0 + b0
        c1 = a1 + b1
        c = C[c0, c1]
        assert_equal(c, a + b)
      end

      def test_minus
        a0 = fake_n
        a1 = fake_n
        a = C[a0, a1]
        b0 = fake_n
        b1 = fake_n
        b = C[b0, b1]
        c0 = a0 - b0
        c1 = a1 - b1
        c = C[c0, c1]
        assert_equal(c, a - b)
      end

    end
  end
end
