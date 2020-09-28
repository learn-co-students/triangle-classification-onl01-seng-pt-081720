class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    
    # what violates triangle inequality?
    #In mathematics, the triangle inequality states that for any triangle, the sum of the lengths of any two sides must be greater than or equal to the length of the remaining side

    sum_one_two = @side_one + @side_two
    sum_one_three = @side_one + @side_three
    sum_two_three = @side_two + @side_three



    if @side_one < 0 || @side_two < 0 || side_three < 0
      raise TriangleError
    elsif @side_one == 0 && @side_two == 0 && side_three == 0
      raise TriangleError
    else

    # sum of one and two is >= side three ok to pass
    if sum_one_two > @side_three

      # sum of one and three is >= side two ok to pass
      if sum_one_three > @side_two

        # sum of two and three is >= side one ok to pass
        if sum_two_three > @side_one
          if @side_one == @side_two && @side_two == @side_three 
            return :equilateral
          elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
            return :isosceles
          elsif @side_one != @side_two || @side_two != @side_three || @side_one != @side_three
            return :scalene
          end
        else
          raise TriangleError
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
    end
  end
 

  class TriangleError < StandardError
    def message
      "You must provide a triangle with correct dimensions"
    end
  end

  
end
