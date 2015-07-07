# -*- coding: utf-8 -*-

##
# Accessors for #x, #y.
#
module Vector::XY

  def x
    self[0]
  end

  def x=(x)
    self[0]=x
  end

  def y
    self[1]
  end

  def y=(y)
    self[1]=y
  end

end
