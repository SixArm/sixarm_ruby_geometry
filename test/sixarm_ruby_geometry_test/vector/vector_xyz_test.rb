# -*- coding: utf-8 -*-
require "minitest/autorun"
Minitest::Test ||= MiniTest::Unit::TestCase
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/vector/vector_xyz"
require "sixarm_ruby_geometry_test/fake"

class VectorXYZTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::Vector::XYZ
  end

  def test_0
    assert(::Vector::XYZ)
  end

  def test_new
    assert(C[0,0,0])
  end

  def test_x
    x = fake_n
    o = C[x, 0, 0]
    assert_equal(x, o.x)
  end

  def test_x_equal
    x = fake_n
    o = fake_vector
    refute_equal(x, o.x)
    o.x = x
    assert_equal(x, o.x)
  end

  def test_y
    y = fake_n
    o = C[0, y, 0]
    assert_equal(y, o.y)
  end

  def test_y_equal
    y = fake_n
    o = fake_vector
    refute_equal(y, o.y)
    o.y = y
    assert_equal(y, o.y)
  end

  def test_z
    z = fake_n
    o = C[0, 0, z]
    assert_equal(z, o.z)
  end

  def test_z_equal
    z = fake_n
    o = fake_vector
    refute_equal(z, o.z)
    o.z = z
    assert_equal(z, o.z)
  end

  def fake_vector
    C[0, 0, 0]
  end

end
