require 'rubygems'
require 'highline/import'

# Refer to the documentation here for some more examples:
# @see http://rubydoc.info/gems/highline/1.6.2/frames
# 
# A bit of warning, highline is great, but the documentation of all the examples
# is not the best. During the next class we will review it in more detail so go
# as far as you are interested.
# 

say "Hello Geometry Genius!"

def geo_quiz(shapes)
  shapes.each do |shape, num_sides|
    while ask("#{shape.capitalize}? ", Integer) != num_sides
      say "Fuck you, no."
    end
    say "Great job."
  end
end

shapes = {
  :triangle => 3,
  :square => 4
}

geo_quiz(shapes)
