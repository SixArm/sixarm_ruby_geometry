# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/vector"
require "sixarm_ruby_geometry_test/fake"

module Space
  module Vector
    class Test < Minitest::Test

      def test_0
        assert(::Space::Vector)
      end

      require "matrix"
      class C < ::Vector
        include ::Space::Vector
      end

      def test_new
        assert(C[0,0])
      end

      def test_index
        e0 = fake_n
        c = C[e0]
        assert_equal(e0, c[0])
      end

    end
  end
end
