# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_geometry"
  s.summary        = "SixArm.com » Ruby » Geometry modules: point, vector, volume, etc."
  s.description    = "Geometry modules with strong types, e.g. a vector with width, height, depth."
  s.version        = "1.0.1"

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
    ".gemtest",
    "CHANGES.md",
    "CONTRIBUTING.md",
    "Rakefile",
    "LICENSE.md",
    "README.md",
    "VERSION",
    "lib/sixarm_ruby_geometry/point/point_as_array_1d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_array_2d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_array_3d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_array_nd.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_1d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_2d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_3d.rb",
    "lib/sixarm_ruby_geometry/point/point_as_vector_nd.rb",
    "lib/sixarm_ruby_geometry/vector/vector_1d.rb",
    "lib/sixarm_ruby_geometry/vector/vector_2d.rb",
    "lib/sixarm_ruby_geometry/vector/vector_3d.rb",
    "lib/sixarm_ruby_geometry/vector/vector_nd.rb",
    "lib/sixarm_ruby_geometry/vector/vector_pitch.rb",
    "lib/sixarm_ruby_geometry/vector/vector_rad.rb",
    "lib/sixarm_ruby_geometry/vector/vector_wh.rb",
    "lib/sixarm_ruby_geometry/vector/vector_whd.rb",
    "lib/sixarm_ruby_geometry/vector/vector_xy.rb",
    "lib/sixarm_ruby_geometry/vector/vector_xyz.rb",
    "lib/sixarm_ruby_geometry/vector/vector_yaw.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_array_1d.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_array_2d.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_array_3d.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_array_nd.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_vector_1d.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_vector_2d.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_vector_3d.rb",
    "lib/sixarm_ruby_geometry/volume/volume_as_vector_nd.rb",
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
    "test/sixarm_ruby_geometry_test/vector/vector_1d_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_2d_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_3d_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_nd_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_pitch_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_rad_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_wh_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_whd_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_xy_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_xyz_test.rb",
    "test/sixarm_ruby_geometry_test/vector/vector_yaw_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_array_1d_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_array_2d_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_array_3d_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_array_nd_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_vector_1d_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_vector_2d_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_vector_3d_test.rb",
    "test/sixarm_ruby_geometry_test/volume/volume_as_vector_nd_test.rb",
  ]

  s.add_development_dependency('minitest', '>= 5.7.0', '< 6')
  s.add_development_dependency('rake', '> 10.4.2', '< 11')
  s.add_development_dependency('simplecov', '>= 0.10.0', '< 2')
  s.add_development_dependency('coveralls', '>= 0.8.2', '< 2')

end
