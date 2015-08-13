# -*- coding: utf-8 -*-

##
# Accessors for #x, #y, #z.
#
module Indexable
  module XYZ

    # Get x.
    def x
      self[0]
    end

    # Set x.
    def x=(x)
      self[0]=x
    end

    # Get y.
    def y
      self[1]
    end

    # Set y.
    def y=(y)
      self[1]=y
    end

    # Get z.
    def z
      self[2]
    end

    # Set z.
    def z=(z)
      self[2]=z
    end

  end
end
