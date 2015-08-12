# SixArm.com » Ruby » <br> Geometry modules

<!--HEADER-OPEN-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry/badges/gpa.svg)](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_geometry.svg?branch=master)](https://travis-ci.org/SixArm/sixarm_ruby_geometry)

* Git: <https://github.com/sixarm/sixarm_ruby_geometry.git>
* Doc: <http://sixarm.com/sixarm_ruby_geometry/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_geometry>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See [CHANGES.md](CHANGES.md).
* License: See [LICENSE.md](LICENSE.md).
* Helping: See [CONTRIBUTING.md](./CONTRIBUTING.md).

<!--HEADER-SHUT-->


## Introduction

Geometry modules for points, vectors, and volumes.

These modules are minimal building blocks for larger apps, providing namespaces and broadly useful implemenation methods.

Example - Grid X/Y:

    class MyGrid < Vector  # Typical Ruby vector
      include Vector::XY   # Mix in methods #x, #x=, #y, #y=
    end

    grid = MyGrid[10, 20]
    grid.x #=> 10
    grid.y #=> 20

Example - Pitch and Yaw:

    class MyAirplane < Vector  # Typical Ruby vector
      include Vector::Pitch    # Mix in method #pitch
      include Vector::Yaw      # Mix in method #yaw
    end

    airplane = MyAirplane[3, 4, 5]
    airplane.pitch #=> 0.7853981633974483
    airplane.yaw #=> -0.9272952180016122

The complete docs are at <http://sixarm.com/sixarm_ruby_geometry/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Installation

### Gemfile
Add to your Gemfile:

    gem "sixarm_ruby_geometry", ">= 1.0.1", "< 2"

### Command Line
* Basic: Run the following line in a terminal:
```
    gem install sixarm_ruby_geometry -v ">= 1.0.1, < 2"
```
* **More secure:** Run these three commands in a terminal:
```
    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_geometry -v ">= 1.0.1, < 2" --trust-policy HighSecurity
```
### Requiring the Gem
To require the gem in your code:

    require "sixarm_ruby_geometry"

<!--INSTALL-SHUT-->

## Usage
### Points

A point can be:

* `1D`: One dimensional, a point on a line.
* `2D`: Two dimensional, a point in an (x, y) plane.
* `3D`: Three dimensional, a point in an (x, y, z) space.
* `ND`: N dimensional, a point (coordinate) in a higher dimensional space.

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


### Volumes

A volume can be:

* `1D`: One dimensional, such as a line.
* `2D`: Two dimensional, such as a circle.
* `3D`: Three dimensional, such as a sphere.
* `ND`: N dimensional, such as higher dimensionals.

A volume can be implemented in two ways in Ruby: as an `Array` or `Vector`; again, both implementations are provided.

Volume modules implemented as arrays:

* `VolumeAsArray1D`
* `VolumeAsArray2D`
* `VolumeAsArray3D`
* `VolumeAsArrayND`

Volume modules implemented as vectors:

* `VolumeAsVector1D`
* `VolumeAsVector2D`
* `VolumeAsVector3D`
* `VolumeAsVectorND`

### Vector modules:

* `Vector1D`: 1 dimension.
* `Vector2D`: 2 dimensions.
* `Vector3D`: 3 dimensions.
* `VectorND`: N dimensions.

Accessors suitable for width, height, depth:

* `Vector::W`: `Vector` with `#width`.
* `Vector::WH`: `Vector` with `#width`, `#height`.
* `Vector::WHD`: `Vector` with `#width`, `#height`, `#depth`.

Accessors suitable for x, y, z:

* `Vector::X`: `Vector` with `#x` coordinate.
* `Vector::XY`: `Vector` with `#x`, `#y`  coordinates.
* `Vector::XYZ`: `Vector` with `#x`, `#y`, `#z`  coordinates.

Math:

* `Vector::Rad`: calculate a 2-dimensional angle in radians.
* `Vector::Pitch`: calculate a 3-dimensional pitch, i.e. angle from xy plane to z.
* `Vector::Yaw`: calculate a 3-dimensional yaw, i.e. angle within xy plane.
