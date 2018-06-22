# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable/d2"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  module D2
    class Test < Minitest::Test

      def test_0
        assert(::Indexable::D2)
      end

      require "matrix"
      class C < Vector
        include ::Indexable::D2
      end

      def test_new
        assert(C[0, 0])
      end

      def test_index
        e0 = fake_n
        e1 = fake_n
        c = C[e0, e1]
        assert_equal(e0, c[0])
        assert_equal(e1, c[1])
      end

    end
  end
end
