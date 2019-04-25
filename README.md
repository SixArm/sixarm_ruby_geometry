# SixArm.com → Ruby → <br> Geometry modules

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_geometry.svg)](http://badge.fury.io/rb/sixarm_ruby_geometry)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_geometry.png)](https://travis-ci.org/SixArm/sixarm_ruby_geometry)
[![Code Climate](https://api.codeclimate.com/v1/badges/9ea67823a1cb274c76d5/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_geometry/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_geometry>
* Doc: <http://sixarm.com/sixarm_ruby_geometry/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_geometry>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->


## Introduction

Geometry modules for points, spaces, arrays, vectors, math, etc.

These modules are minimal building blocks for larger apps, providing namespaces and broadly useful implemenation methods.

Example of a point:

    class Point < Array
      include Indexable::XY  # Accessors for x and y
    end

    point = Point[10, 20]
    point.x #=> 10
    point.y #=> 20


Example of a space:

    class Space < Array
      include Indexable::WidthHeight  # Accessors for width and height
    end

    space = Space[10, 20]
    space.width  #=> 10
    space.height #=> 20


Example of geometry math:

    class Airplane < Array
      include Indexable::Pitch  # Mix in method
      include Indexable::Yaw    # Mix in method
    end

    airplane = Airplane[3, 4, 5]
    airplane.pitch #=> 0.7853981633974483
    airplane.yaw #=> -0.9272952180016122

The complete docs are at <http://sixarm.com/sixarm_ruby_geometry/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_geometry

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_geometry'

### Require

To require the gem in your code:

    require 'sixarm_ruby_geometry'

<!--install-shut-->


## Usage


### Point

A point class is easy to implement as an array or vector.

Example of a point implemented as an array:

    class Point < Array
    end

Example of a point implemented as a vector:

    require 'matrix'
    class Point < Vector
    end

Addition and subtraction:


### Space

A space class is easy to implement as an array or vector.

Example of a space implemented as an array:

    class Space < Array
    end

Example of a space implemented as a vector:

    require 'matrix'
    class Space < Vector
    end


### Indexable

Marker modules that provide semantic information:

* `Indexable::D1`: Dimension 1, responds to `[0]`.
* `Indexable::D2`: Dimension 2, responds to `[0]`, `[1]`.
* `Indexable::D3`: Dimension 3, responds to `[0]`, `[1]`, `[2]`.

Mix in methods for x, y, z:

* `Indexable::X`: mix in methods `x`, `x=`, accessing `[0]`.
* `Indexable::XY`: mix in methods `x`, `x=`, `y`, `y=`, accessing `[0]`, `[1]`.
* `Indexable::XYZ`: mix in methods `x`, `x=`, `y`, `y=`, `z`, `z=`, accessing `[0]`, `[1]`, `[2]`.

Mix in methods for width, height, depth:

* `Indexable::Width`: mix in methods `width`, `width=`, accessing `[0]`.
* `Indexable::WidthHeight`: mix in methods `width`, `width=`, `height`, `height=`, accessing `[0]`, `[1]`.
* `Indexable::WidthHeightDepth`: mix in methods `width`, `width=`, `height`, `height=`, `depth`, `depth=`, accessing `[0]`, `[1]`, `[2]`.

Mix in methods for geometry math:

* `Indexable::Rad`: calculate a 2-dimensional angle in radians, accessing `[0]`, `[1]`.
* `Indexable::Pitch`: calculate a 3-dimensional pitch, i.e. angle from xy plane to z, accessing `[0]`, `[1]`, `[2]`.
* `Indexable::Yaw`: calculate a 3-dimensional yaw, i.e. angle within xy plane, accessing `[0]`, `[1]`, `[2]`.


### Marker Modules

If you're creating a class, then you may like to emphasize the intent of the class by using marker modules.

These modules are all blank by default; you may add your own code to them as you like.

Point modules:

* `Point`
* `Point::Array`
* `Point::Array::D1`
* `Point::Array::D2`
* `Point::Array::D3`
* `Point::Vector`
* `Point::Vector::D1`
* `Point::Vector::D2`
* `Point::Vector::D3`

Space modules:

* `Space`
* `Space::Array`
* `Space::Array::D1`
* `Space::Array::D2`
* `Space::Array::D3`
* `Space::Vector`
* `Space::Vector::D1`
* `Space::Vector::D2`
* `Space::Vector::D3`

Examples of geometry shapes, implemented with arrays:

    class Line
      include Space::Array::D1
    end

    class Square
      include Space::Array::D2
    end

    class Cube
      include Space::Array::D3
    end

Examples of a chess board and chess piece, implemented with vectors:

    class ChessBoard
      include Space::Vector::2D
    end

    class ChessPiece
      include Point::Vector::2D
    end


### Array Element Math

A point array has methods for `+` and `-`:

    # Define a point class
    class C < Array
       include Point::Array
    end

    # Define some points
    a = C[1, 1]
    b = C[2, 2]

    # Add
    a + b #=> [3, 3]

    # Subtract
    a - b #=> [-1, -1]
