# -*- coding: utf-8 -*-

##
# A generic geometery point.
#
#  * Intended to be implemented via Array.
#  * Intended to be N-dimensional.
#
module Point
  module Array

    def +(other)
      raise ::IndexError unless self.size == other.size
      self.size.times.map{|i| self[i] + other[i] }
    end

    def -(other)
      raise ::IndexError unless self.size == other.size
      self.size.times.map{|i| self[i] - other[i] }
    end

  end
end
