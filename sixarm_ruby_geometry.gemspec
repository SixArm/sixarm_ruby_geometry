# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_geometry"
  s.summary        = "SixArm.com → Ruby → Geometry modules: point, vector, volume, etc."
  s.description    = "Geometry modules with strong types, e.g. a vector with width, height, depth."
  s.version        = "4.0.0"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-2.0", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    = "/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-private.pem"
  s.cert_chain     = ["/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"

  # Deliberate explicit manifest
  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_geometry.rb",
    "lib/sixarm_ruby_geometry/point.rb",
    "lib/sixarm_ruby_geometry/point/array.rb",
    "lib/sixarm_ruby_geometry/point/array/d1.rb",
    "lib/sixarm_ruby_geometry/point/array/d2.rb",
    "lib/sixarm_ruby_geometry/point/array/d3.rb",
    "lib/sixarm_ruby_geometry/point/vector.rb",
    "lib/sixarm_ruby_geometry/point/vector/d1.rb",
    "lib/sixarm_ruby_geometry/point/vector/d2.rb",
    "lib/sixarm_ruby_geometry/point/vector/d3.rb",
    "lib/sixarm_ruby_geometry/indexable.rb",
    "lib/sixarm_ruby_geometry/indexable/d1.rb",
    "lib/sixarm_ruby_geometry/indexable/d2.rb",
    "lib/sixarm_ruby_geometry/indexable/d3.rb",
    "lib/sixarm_ruby_geometry/indexable/pitch.rb",
    "lib/sixarm_ruby_geometry/indexable/rad.rb",
    "lib/sixarm_ruby_geometry/indexable/width.rb",
    "lib/sixarm_ruby_geometry/indexable/width_height.rb",
    "lib/sixarm_ruby_geometry/indexable/width_height_depth.rb",
    "lib/sixarm_ruby_geometry/indexable/x.rb",
    "lib/sixarm_ruby_geometry/indexable/xy.rb",
    "lib/sixarm_ruby_geometry/indexable/xyz.rb",
    "lib/sixarm_ruby_geometry/indexable/yaw.rb",
    "lib/sixarm_ruby_geometry/space.rb",
    "lib/sixarm_ruby_geometry/space/array.rb",
    "lib/sixarm_ruby_geometry/space/array/d1.rb",
    "lib/sixarm_ruby_geometry/space/array/d2.rb",
    "lib/sixarm_ruby_geometry/space/array/d3.rb",
    "lib/sixarm_ruby_geometry/space/vector.rb",
    "lib/sixarm_ruby_geometry/space/vector/d1.rb",
    "lib/sixarm_ruby_geometry/space/vector/d2.rb",
    "lib/sixarm_ruby_geometry/space/vector/d3.rb",
  ]

  # Deliberate explicit manifest
  s.test_files = [
    "test/sixarm_ruby_geometry_test.rb",
    "test/sixarm_ruby_geometry_test/point_test.rb",
    "test/sixarm_ruby_geometry_test/point/array_test.rb",
    "test/sixarm_ruby_geometry_test/point/array/d1_test.rb",
    "test/sixarm_ruby_geometry_test/point/array/d2_test.rb",
    "test/sixarm_ruby_geometry_test/point/array/d3_test.rb",
    "test/sixarm_ruby_geometry_test/point/vector_test.rb",
    "test/sixarm_ruby_geometry_test/point/vector/d1_test.rb",
    "test/sixarm_ruby_geometry_test/point/vector/d2_test.rb",
    "test/sixarm_ruby_geometry_test/point/vector/d3_test.rb",
    "test/sixarm_ruby_geometry_test/indexable_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/d1_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/d2_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/d3_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/pitch_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/rad_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/width_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/width_height_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/width_height_depth_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/x_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/xy_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/xyz_test.rb",
    "test/sixarm_ruby_geometry_test/indexable/yaw_test.rb",
    "test/sixarm_ruby_geometry_test/space_test.rb",
    "test/sixarm_ruby_geometry_test/space/array_test.rb",
    "test/sixarm_ruby_geometry_test/space/array/d1_test.rb",
    "test/sixarm_ruby_geometry_test/space/array/d2_test.rb",
    "test/sixarm_ruby_geometry_test/space/array/d3_test.rb",
    "test/sixarm_ruby_geometry_test/space/vector_test.rb",
    "test/sixarm_ruby_geometry_test/space/vector/d1_test.rb",
    "test/sixarm_ruby_geometry_test/space/vector/d2_test.rb",
    "test/sixarm_ruby_geometry_test/space/vector/d3_test.rb",
  ]

  s.add_development_dependency("minitest", ">= 5.12", "< 6")
  s.add_development_dependency("sixarm_ruby_minitest_extensions", ">= 1.0.8", "< 2")
  s.add_development_dependency("rake", ">= 12.3.3", "< 13")
  s.add_development_dependency("simplecov", ">= 0.18.0", "< 2")
  s.add_development_dependency("flog", ">= 4.6.2", "< 5")
  s.add_development_dependency("flay", ">= 2.12.0", "< 3")
  s.add_development_dependency("reek", ">= 4.8.1", "< 5")
  s.add_development_dependency('rubycritic', '>= 3.4.0', '< 4')
  s.add_development_dependency('rubocop', '>= 0.57.2', '< 1')

  s.required_ruby_version = ">= 2.5"

end
