# -*- coding: utf-8 -*-

##
# Accessors for #width.
#
module Indexable
  module Width

    # Get width.
    def width
      self[0]
    end

    # Set width.
    def width=(width)
      self[0]=width
    end

  end
end
