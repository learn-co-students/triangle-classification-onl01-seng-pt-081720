class Triangle
  
  attr_accessor :equilateral, :isosceles , :scalene 

 def initialize (base, length, height)
   @base = base 
   @length = length
   @height = height
 end 
 
 def kind 
  if @base ==@length = @height
    then 
    :equilateral
    elsif (@base == @length) || (@base == @height) || (@length == @height) 
    then 
  :isosceles
elsif 
(@base != @length) && (@length != @height) && (@base != @height)
  :scalene
  end 
end 
 
end
