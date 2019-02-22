require "jekyll"

module Jekyll
  module Drill
    # Takes a dot-notated string and uses it to drill down into a hash.
    # Returns the drilled value, or the original string if there are any
    # errors.
    def drill(str, obj)
      # Keep track of the last thing we drilled to.
      drilled = obj

      # Keep track of how many levels we have drilled.
      levels_drilled = 0
      levels = str.split('.')

      # Loop through each level.
      levels.each do |level|

        # If we have drilled down to a scalar value too soon, abort.
        break if drilled.class != Hash

        if drilled.has_key? level
          # If we find something, continue drilling.
          drilled = drilled[level]
          levels_drilled += 1
        end

      end

      # If we didn't drill the right number of levels, return the
      # original string.
      if levels.length != levels_drilled
        return str
      end

      # Otherwise we must have drilled all they way.
      return drilled
    end
  end
end

Liquid::Template.register_filter(Jekyll::Drill)
