require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid?
    (a + b > c) && (a + c > b) && (b + c > a)
  end

  def kind
    if (a + b <= 0) || (a + c <= 0) || (b + c <=0) || valid? == false
      raise TriangleError
    elsif (a == b) && (b == c)
      :equilateral
    elsif (a == b) || (a == c) || (b == c)
      :isosceles
    else 
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end