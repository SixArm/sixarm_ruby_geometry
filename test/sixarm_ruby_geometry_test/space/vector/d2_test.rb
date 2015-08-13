# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/vector/d2"
require "sixarm_ruby_geometry_test/fake"

module Space
  module Vector
    module D2
      class Test < Minitest::Test

        def test_0
          assert(::Space::Vector::D2)
        end

        require "matrix"
        class C < ::Vector
          include ::Space::Vector::D2
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
end
