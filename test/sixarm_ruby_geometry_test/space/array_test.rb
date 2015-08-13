# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/array"
require "sixarm_ruby_geometry_test/fake"

module Space
  module Array
    class Test < Minitest::Test

      def test_0
        assert(::Space::Array)
      end

      class C < ::Array
        include ::Space::Array
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
  end
end
