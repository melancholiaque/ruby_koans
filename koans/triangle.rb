# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  args = [a,b,c]
  raise TriangleError if args.any? { |x| x <= 0 }
  raise TriangleError if args.inject(:+) - args.max <= args.max
  {
    3 => :equilateral,
    1 => :isosceles,
    0 => :scalene
  }[ (args.combination 2).count { |x,y| x == y } ]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
