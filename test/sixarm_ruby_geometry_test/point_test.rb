# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/point"
require "sixarm_ruby_geometry_test/fake"

module Point
  class Test < Minitest::Test

    def test_0
      assert(::Point)
    end

    class C
      include ::Point
    end

    def test_include
      assert_includes(C.ancestors, ::Point)
    end

  end
end
