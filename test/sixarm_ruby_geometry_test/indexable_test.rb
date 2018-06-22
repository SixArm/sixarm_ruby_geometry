# -*- coding: utf-8 -*-
require "sixarm_ruby_geometry_test"
require "sixarm_ruby_geometry/indexable"
require "sixarm_ruby_geometry_test/fake"

module Indexable
  class Test < Minitest::Test

    def test_0
      assert(::Indexable)
    end

    class C
      include ::Indexable
      def []
      end
    end

    def test_include
      assert_includes(C.ancestors, ::Indexable)
    end

    def test_braces
      assert(C.new.respond_to?:[])
    end

  end
end
