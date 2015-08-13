# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/indexable/d3"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  module D3
    class Test < Minitest::Test

      def test_0
        assert(::Indexable::D3)
      end

      require "matrix"
      class C < Vector
        include ::Indexable::D3
      end

      def test_new
        assert(C[0,0,0])
      end

      def test_index
        e0 = fake_n
        e1 = fake_n
        e2 = fake_n
        c = C[e0, e1, e2]
        assert_equal(e0, c[0])
        assert_equal(e1, c[1])
        assert_equal(e2, c[2])
      end

    end
  end
end
