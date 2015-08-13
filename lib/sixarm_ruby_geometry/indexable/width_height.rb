# -*- coding: utf-8 -*-

##
# Accessors for #width, #height.
#
module Indexable
  module WidthHeight

    # Get width.
    def width
      self[0]
    end

    # Set width.
    def width=(width)
      self[0]=width
    end

    # Get height.
    def height
      self[1]
    end

    # Set height.
    def height=(height)
      self[1]=height
    end

  end
end
