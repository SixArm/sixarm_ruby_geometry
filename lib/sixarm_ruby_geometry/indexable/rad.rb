# -*- coding: utf-8 -*-

##
# Indexable #rad method.
#
module Indexable
  module Rad

    # Calculate the xy angle in radians.
    def rad
      Math::atan2(self[1],self[0])
    end

  end
end
