# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/point/vector/d1"
require "sixarm_ruby_geometry_test/fake"

module Point
  module Vector
    module D1
      class Test < Minitest::Test

        def test_0
          assert(::Point::Vector::D1)
        end

        require "matrix"
        class C < ::Vector
          include ::Point::Vector::D1
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
end
