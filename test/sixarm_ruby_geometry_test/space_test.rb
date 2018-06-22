# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/space"
require "sixarm_ruby_geometry_test/fake"

module Space
  class Test < Minitest::Test

    def test_0
      assert(::Space)
    end

    class C
      include ::Space
    end

    def test_include
      assert_includes(C.ancestors, ::Space)
    end

  end
end
