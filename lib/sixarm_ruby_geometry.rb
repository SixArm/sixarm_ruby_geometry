# -*- coding: utf-8 -*-

require "matrix"

SOURCES = %w"
  point/point_as_array_1d
  point/point_as_array_2d
  point/point_as_array_3d
  point/point_as_array_nd
  point/point_as_vector_1d
  point/point_as_vector_2d
  point/point_as_vector_3d
  point/point_as_vector_nd
  indexable/indexable_1d
  indexable/indexable_2d
  indexable/indexable_3d
  indexable/indexable_nd
  indexable/indexable_pitch
  indexable/indexable_rad
  indexable/indexable_width
  indexable/indexable_width_height
  indexable/indexable_width_height_depth
  indexable/indexable_x
  indexable/indexable_xy
  indexable/indexable_xyz
  indexable/indexable_yaw
  space/space_as_array_1d
  space/space_as_array_2d
  space/space_as_array_3d
  space/space_as_array_nd
  space/space_as_vector_1d
  space/space_as_vector_2d
  space/space_as_vector_3d
  space/space_as_vector_nd
"

SOURCES.map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_geometry/#{x}.rb"
}
