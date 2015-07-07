# -*- coding: utf-8 -*-

##
# Vector #yaw method.
#
module Vector::Yaw

  # Calculate the xy-plane angle in radians.
  def yaw
    Math::atan2(-self[1],self[0])
  end

end
