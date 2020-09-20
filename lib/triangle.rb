require 'pry'
class Triangle
  
  attr_accessor :l_one, :l_two, :l_three 
  
  def initialize(l_one, l_two, l_three)
    @l_one = l_one 
    @l_two = l_two 
    @l_three = l_three
    @all_sides = [@l_one, @l_two, @l_three]
    @all_sides.sort!
  end 
  
  
  def valid_triangle
     @l_one + @l_two > @l_three && @l_one + @l_three > @l_two && @l_two + @l_three > @l_one 
   end
  
  def valid_triangle_two
    @l_one.positive? && @l_two.positive? && @l_three.positive? 
  end
  
  def kind 
    if valid_triangle && valid_triangle_two 
      puts true 
    else 
      raise TriangleError 
    end 
 
  
    if @l_one == @l_two && @l_two == @l_three && @l_three == @l_one
      :equilateral 
    elsif @l_one != @l_two && @l_two != @l_three && @l_three != @l_one
     :scalene
    else 
      :isosceles
  end 
end 
  
  
  class TriangleError < StandardError 
    def message 
     "this triangle is invalid"
   end 
  
end
  
end
