# SixArm.com » Ruby » <br> Geometry modules

<!--HEADER-OPEN-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry/badges/gpa.svg)](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_geometry.git.png)](https://travis-ci.org/SixArm/sixarm_ruby_geometry.git)

* Git: <https://github.com/sixarm/sixarm_ruby_geometry.git>
* Doc: <http://sixarm.com/sixarm_ruby_geometry/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_geometry>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

<!--HEADER-SHUT-->


## Introduction

Geometry modules for points, vectors, volumes, etc.

These modules are minimal building blocks for larger apps; these modules are intended to provide namespaces, plus some generally useful implemenation methods.

Example:

    class MyGrid < Vector  # Typical Ruby vector
      include Vector::XY   # Mix in methods #x, #x=, #y, #y=
    end

    grid = MyGrid[10, 20]
    grid.x #=> 10
    grid.y #=> 20

Example:

    class MyAirplane < Vector  # Typical Ruby vector
      include Vector::Pitch    # Mix in method #pitch
      include Vector::Yaw      # Mix in method #yaw
    end

    airplane = MyAirplane[3, 4, 5]
    airplane.pitch #=> 0.7853981633974483
    airplane.yaw #=> -0.9272952180016122

For docs go to <http://sixarm.com/sixarm_ruby_geometry/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_geometry", ">= 1.0.1", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_geometry -v ">= 1.0.1, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_geometry -v ">= 1.0.1, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_geometry"

<!--INSTALL-SHUT-->


## Point

A point can be:

* 1D: One dimensional, such as a point on a line.
* 2D: Two dimensional, such as a point in an (x, y) plane.
* 3D: Three dimensional, such as a point in an (x, y, z) space.
* ND: N dimensional, such as higher dimensions.

Ruby has two typical ways to implement a point: as an `Array` class, or a `Vector` class.

We provide both kinds of implementations; you will likely want to pick the implementation that works best with your other code, such as any math libraries that you may be using.

Point modules that are implemented as arrays:

* `PointAsArray1D`
* `PointAsArray2D`
* `PointAsArray3D`
* `PointAsArrayND`

Point modules that are implemented as vectors:

* `PointAsVector1D`
* `PointAsVector2D`
* `PointAsVector3D`
* `PointAsVectorND`


## Volume

A volume can be:

* 1D: One dimensional, such as a line.
* 2D: Two dimensional, such as a circle.
* 3D: Three dimensional, such as a sphere.
* ND: N dimensional, such as higher dimensionals.

Ruby has two typical ways to implement a volume: as an `Array` class, or a `Vector` class.

We provide both kinds of implementations; you will likely want to pick the implementation that works best with your other code, such as any math libraries that you may be using.

Volume modules that are implemented as arrays:

* `VolumeAsArray1D`
* `VolumeAsArray2D`
* `VolumeAsArray3D`
* `VolumeAsArrayND`

Volume modules that are implemented as vectors:

* `VolumeAsVector1D`
* `VolumeAsVector2D`
* `VolumeAsVector3D`
* `VolumeAsVectorND`


## Vector

Vector modules:

* `Vector1D`: `Vector` intended to use 1 dimension.
* `Vector2D`: `Vector` intended to use 2 dimensions.
* `Vector3D`: `Vector` intended to use 3 dimensions.
* `VectorND`: `Vector` intended to use N dimensions.

Accessors suitable for width, height, depth:

* `Vector::W`: `Vector` with `#width`.
* `Vector::WH`: `Vector` with `#width`, `#height`.
* `Vector::WHD`: `Vector` with `#width`, `#height`, `#depth`.

Accessors suitable for x, y, z:

* `Vector::X`: `Vector` with `#x`.
* `Vector::XY`: `Vector` with `#x`, `#y`.
* `Vector::XYZ`: `Vector` with `#x`, `#y`, `#z`.

Math:

* `Vector::Rad`: `Vector` `#rad` to calculate a 2-dimensional angle in radians.
* `Vector::Pitch`: `Vector` `#pitch` to calculate a 3-dimensional pitch, i.e. angle from xy plane to z.
* `Vector::Yaw`: `Vector` `#yaw` to calculate a 3-dimensional yaw, i.e. angle within xy plane.
