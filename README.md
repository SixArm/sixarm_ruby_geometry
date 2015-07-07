# SixArm.com » Ruby » <br> Geometry modules

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_geometry.png)](https://travis-ci.org/SixArm/sixarm_ruby_geometry)

* Doc: <http://sixarm.com/sixarm_ruby_geometry/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_geometry>
* Repo: <http://github.com/sixarm/sixarm_ruby_geometry>
* Email: Joel Parker Henderson <joel@sixarm.com>


## Introduction

Geometry modules for points, vectors, volumes, etc.

These modules are minimal building blocks for larger apps; these modules are intended to provide namespaces, plus some generally useful implemenation methods.

Example:

    require "sixarm_ruby_geometry"

    class Airplane < Vector
      include PointAsVector3D  # Provide semantic implementation namespace.
      include Vector::XYZ      # Provide semantic accessors Vector#x, Vector#y, Vector#z.
      include Vector::Pitch    # Provide Vector#pitch to calculate angle above the xy plane.
      include Vector::Yaw      # Provide Vector#yaw to calculate angle within the xy plane.
    end

    a = Airplane[3, 4, 5]
    a.kind_of?(PointAsVector3D) #=> true
    a.x #=> 3
    a.y #=> 4
    a.z #=> 5
    a.pitch #=> 0.7853981633974483
    a.yaw #=> -0.9272952180016122

For docs go to <http://sixarm.com/sixarm_ruby_geometry/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_geometry

Bundler:

    gem "sixarm_ruby_geometry", ">=1.0.0", "<2"

Require:

    require "sixarm_ruby_geometry"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_geometry --trust-policy HighSecurity


## Point

Point modules implemented as arrays:

* `PointArray1D`
* `PointArray2D`
* `PointArray3D`
* `PointArrayND`


Point modules implemented as vectors:

* `PointAsVector1D`
* `PointAsVector2D`
* `PointAsVector3D`
* `PointAsVectorND`


## Volume

Volume modules implemented as arrays:

* `VolumeAsArray::1D`
* `VolumeAsArray::2D`
* `VolumeAsArray::3D`
* `VolumeAsArray::ND`

Volume modules implemented as vectors:

* `VolumeAsVector1D`
* `VolumeAsVector2D`
* `VolumeAsVector3D`
* `VolumeAsVectorND`


## Vector

Vector modules:

* `Vector1D`: `Vector` intended to use 1 dimension.
* `Vector2D`: `Vector` intended to use 2 dimensions.
* `Vector3D`; `Vector` intended to use 3 dimensions.
* `VectorND`; `Vector` intended to use N dimensions.

Accessors suitable for width, height, depth:

* `Vector::W`: `Vector` `#width`.
* `Vector::WH`: `Vector` `#width`, `#height`.
* `Vector::WHD: `Vector` `#width`, `#height`, `#depth`.

Accessors suitable for x, y, z:

* `Vector::X`: `Vector` `#x`.
* `Vector::XY`: `Vector` `#x`, `#y`.
* `Vector::XYZ`: `Vector` `#x`, `#y`, `#z`.

Math:

* `Vector::Rad`: `Vector` `#rad` to calculate a 2-dimensional angle in radians.
* `Vector::Pitch`: `Vector` `#pitch` to calculate a 3-dimensional pitch, i.e. angle from the xy plane to z.
* `Vector::Yaw`: `Vector` `#yaw` to calculate a 3-dimensional yaw, i.e. angle within the xy plane.
