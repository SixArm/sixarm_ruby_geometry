# -*- coding: utf-8 -*-

##
# Accessors for #x.
#
module Indexable
  module X

    def x
      self[0]
    end

    def x=(x)
      self[0]=x
    end

  end
end
