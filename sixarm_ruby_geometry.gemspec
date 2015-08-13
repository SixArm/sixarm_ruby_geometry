# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_geometry"
  s.summary        = "SixArm.com » Ruby » Geometry modules: point, vector, volume, etc."
  s.description    = "Geometry modules with strong types, e.g. a vector with width, height, depth."
  s.version        = "2.0.0"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key    =  "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"
  s.has_rdoc       = true

  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_geometry/point/point_as_array_1d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_array_2d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_array_3d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_array_nd.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_1d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_2d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_3d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_nd.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_1d.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_2d.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_3d.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_nd.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_pitch.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_rad.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_width.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_width_height.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_width_height_depth.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_x.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_xy.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_xyz.rb",
    "lib/sixarm_ruby_geometry/indexable/indexable_yaw.rb",
    "lib/sixarm_ruby_geometry/space/space_as_array_1d.rb",
    "lib/sixarm_ruby_geometry/space/space_as_array_2d.rb",
    "lib/sixarm_ruby_geometry/space/space_as_array_3d.rb",
    "lib/sixarm_ruby_geometry/space/space_as_array_nd.rb",
    "lib/sixarm_ruby_geometry/space/space_as_vector_1d.rb",
    "lib/sixarm_ruby_geometry/space/space_as_vector_2d.rb",
    "lib/sixarm_ruby_geometry/space/space_as_vector_3d.rb",
    "lib/sixarm_ruby_geometry/space/space_as_vector_nd.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_geometry_test/point/point_as_array_1d_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_array_2d_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_array_3d_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_array_nd_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_vector_1d_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_vector_2d_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_vector_3d_test.rb",
    "test/sixarm_ruby_geometry_test/point/point_as_vector_nd_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_1d_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_2d_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_3d_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_nd_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_pitch_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_rad_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_width_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_width_height_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_width_height_depth_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_x_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_xy_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_xyz_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/indexable_yaw_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_array_1d_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_array_2d_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_array_3d_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_array_nd_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_vector_1d_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_vector_2d_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_vector_3d_test.rb",
    "test/sixarm_ruby_geometry_test/space/space_as_vector_nd_test.rb",
  ]

  s.add_development_dependency('minitest', '>= 5.7.0', '< 6')
  s.add_development_dependency('rake', '> 10.4.2', '< 11')
  s.add_development_dependency('simplecov', '>= 0.10.0', '< 2')
  s.add_development_dependency('coveralls', '>= 0.8.2', '< 2')

end
