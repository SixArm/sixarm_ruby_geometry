# -*- coding: utf-8 -*-

require "matrix"

SOURCES = %w"
  point
  point/array
  point/array/d1
  point/array/d2
  point/array/d3
  point/vector
  point/vector/d1
  point/vector/d2
  point/vector/d3
  indexable
  indexable/d1
  indexable/d2
  indexable/d3
  indexable/pitch
  indexable/rad
  indexable/width
  indexable/width_height
  indexable/width_height_depth
  indexable/x
  indexable/xy
  indexable/xyz
  indexable/yaw
  space
  space/array
  space/array/d1
  space/array/d2
  space/array/d3
  space/vector
  space/vector/d1
  space/vector/d2
  space/vector/d3
"

SOURCES.map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_geometry/#{x}.rb"
}
