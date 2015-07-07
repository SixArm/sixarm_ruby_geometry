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
  vector/vector_1d
  vector/vector_2d
  vector/vector_3d
  vector/vector_nd
  vector/vector_pitch
  vector/vector_rad
  vector/vector_wh
  vector/vector_whd
  vector/vector_xy
  vector/vector_xyz
  vector/vector_yaw
  volume/volume_as_array_1d
  volume/volume_as_array_2d
  volume/volume_as_array_3d
  volume/volume_as_array_nd
  volume/volume_as_vector_1d
  volume/volume_as_vector_2d
  volume/volume_as_vector_3d
  volume/volume_as_vector_nd
"

SOURCES.map{|x|
  require File.dirname(__FILE__) + "/sixarm_ruby_geometry/#{x}.rb"
}
