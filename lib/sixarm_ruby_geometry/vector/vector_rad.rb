# -*- coding: utf-8 -*-

##
# Vector #rad method.
#
module Vector::Rad

  # Calculate the xy angle in radians.
  def rad
    Math::atan2(self[1],self[0])
  end

end
