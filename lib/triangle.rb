class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind 
    if @first == 0 || @second == 0 || @third == 0
        raise TriangleError
    
    elsif @first < 0 || @second < 0 || @third < 0
        raise TriangleError

    elsif ((@first + @second) <= @third) || ((@first + @third) <= @second) || ((@second + @third) <= @first)
        raise TriangleError

    elsif @first == @second && @second == @third
      return :equilateral

    elsif (@first != @second && @second == @third) || (@second != @third && @third == @first) || (@first != @third && @second == @first)
      return :isosceles

    elsif @first != @second && @second != @third
      return :scalene

    end
  end

  
  class TriangleError < StandardError
    def message_zero
      "Triangle Error: Zero values not allowed"
    end

    def message_inequality
      "Triangle Error: Inequality"
    end

    def message_negative
      "Triangle Error: Negative numbers not allowed!"
    end
  end
end
