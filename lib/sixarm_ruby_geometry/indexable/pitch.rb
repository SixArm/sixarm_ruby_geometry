# -*- coding: utf-8 -*-

##
# Indexable #pitch method.
#
module Indexable
  module Pitch

    # Calculate the xy-plane angle to the z-coordinate.
    def pitch
      Math::atan2(self[2], Math::sqrt(self[0]**2 + self[1]**2))
    end

  end
end
