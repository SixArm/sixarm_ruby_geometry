# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/space/vector/d1"
require "sixarm_ruby_geometry_test/fake"

module Space
  module Vector
    module D1
      class Test < Minitest::Test

        def test_0
          assert(::Space::Vector::D1)
        end

        require "matrix"
        class C < ::Vector
          include ::Space::Vector::D1
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
end
