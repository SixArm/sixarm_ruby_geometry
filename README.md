# SixArm.com » Ruby » <br> Geometry modules

<!--HEADER-OPEN-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_geometry.svg)](http://badge.fury.io/rb/sixarm_ruby_geometry)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_geometry.png)](https://travis-ci.org/SixArm/sixarm_ruby_geometry)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_geometry/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_geometry?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_geometry>
* Doc: <http://sixarm.com/sixarm_ruby_geometry/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_geometry>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

<!--HEADER-SHUT-->


## Introduction

Geometry modules for points, spaces, arrays, vectors, math, etc.

These modules are minimal building blocks for larger apps, providing namespaces and broadly useful implemenation methods.

Example of a point:

    class Point < Array
      # Mix in methods #x, #x=, #y, #y=, #z, #z=
      include Indexable::XYZ
    end

    point = Point[10, 20, 30]
    point.x #=> 10
    point.y #=> 20
    point.z #=> 30


Example of a space:

    class Space < Array
      # Mix in methods #width, #width=, #height, #height=, #depth, #depth=
      include Indexable::WidthHeightDepth
    end

    space = Space[10, 20, 30]
    space.width  #=> 10
    space.height #=> 20
    space.depth  #=> 30


Example of math:

    class Airplane < Array
      # Mix in methods #pitch, #yaw
      include Indexable::Pitch
      include Indexable::Yaw
    end

    airplane = Airplane[3, 4, 5]
    airplane.pitch #=> 0.7853981633974483
    airplane.yaw #=> -0.9272952180016122

The complete docs are at <http://sixarm.com/sixarm_ruby_geometry/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem 'sixarm_ruby_geometry', '~> 2.0.1'

To install using the command line, run this:

    gem install sixarm_ruby_geometry -v '~> 2.0.1'

To require this gem in your code:

    require 'sixarm_ruby_geometry'

<!--INSTALL-SHUT-->


## Usage


### Point

A point can be:

* `1D`: One dimensional, such as a point on a line.
* `2D`: Two dimensional, such as a point in an (x, y) plane.
* `3D`: Three dimensional, such as a point in an (x, y, z) space.
* `ND`: N dimensional, such as a point in a higher dimensional space.

A point can be implemented in two ways in Ruby: as an `Array` class, or a `Vector` class.

Both implementations are provided in this gem; you should choose the implementation that works best with your other code and math libraries.

Point modules implemented as arrays:

* `PointAsArray1D`
* `PointAsArray2D`
* `PointAsArray3D`
* `PointAsArrayND`

Point modules implemented as vectors:

* `PointAsVector1D`
* `PointAsVector2D`
* `PointAsVector3D`
* `PointAsVectorND`


### Space

A space can be:

* `1D`: 1 dimensional, such as a line.
* `2D`: 2 dimensional, such as a square.
* `3D`: 3 dimensional, such as a cube.
* `ND`: N dimensional, such as a hypercube.

A space can be implemented in two ways in Ruby: as an `Array` or `Vector`; again, both implementations are provided.

Space modules implemented as arrays:

* `SpaceAsArray1D`
* `SpaceAsArray2D`
* `SpaceAsArray3D`
* `SpaceAsArrayND`

Space modules implemented as vectors:

* `SpaceAsVector1D`
* `SpaceAsVector2D`
* `SpaceAsVector3D`
* `SpaceAsVectorND`


### Indexable

* `Indexable1D`: 1 dimensional and responds to `[0]`.
* `Indexable2D`: 2 dimensional and responds to `[0]`, `[1]`.
* `Indexable3D`: 3 dimensional and responds to `[0]`, `[1]`, `[2]`.
* `IndexableND`: N dimensional and responds to `[0]`...`[N]`.

Mix in methods for x, y, z:

* `Indexable::X`: mix in methods `x`, `x=`, accessing `[0]`.
* `Indexable::XY`: mix in methods `x`, `x=`, `y`, `y=`, accessing `[0]`, `[1]`.
* `Indexable::XYZ`: mix in methods `x`, `x=`, `y`, `y=`, `z`, `z=`, accessing `[0]`, `[1]`, `[2]`.

Mix in methods for width, height, depth:

* `Indexable::Width`: mix in methods `width`, `width=`, accessing `[0]`.
* `Indexable::WidthHeight`: mix in methods `width`, `width=`, `height`, `height=`, accessing `[0]`, `[1]`.
* `Indexable::WidthHeightDepth`: mix in methods `width`, `width=`, `height`, `height=`, `depth`, `depth=`, accessing `[0]`, `[1]`, `[2]`.

Math:

* `Indexable::Rad`: calculate a 2-dimensional angle in radians, accessing `[0]`, `[1]`.
* `Indexable::Pitch`: calculate a 3-dimensional pitch, i.e. angle from xy plane to z, accessing `[0]`, `[1]`, `[2]`.
* `Indexable::Yaw`: calculate a 3-dimensional yaw, i.e. angle within xy plane, accessing `[0]`, `[1]`, `[2]`.
