# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/space/vector/d3"
require "sixarm_ruby_geometry_test/fake"

module Space
  module Vector
    module D3
      class Test < Minitest::Test

        def test_0
          assert(::Space::Vector::D3)
        end

        require "matrix"
        class C < ::Vector
          include ::Space::Vector::D3
        end

        def test_new
          assert(C[0,0,0])
        end

        def test_index
          e0 = fake_n
          e1 = fake_n
          e2 = fake_n
          c = C[e0, e1 , e2]
          assert_equal(c[0], e0)
          assert_equal(c[1], e1)
          assert_equal(c[2], e2)
        end

      end
    end
  end
end
