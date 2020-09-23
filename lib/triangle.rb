class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind #return type of triangle as a symbol
    #no real triangle
    # if a > 0 && b > 0 && c > 0 || a + b > c && a + c > b && b + c > a
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error 
    #   end
    #:equilateral
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a == b && b == c
      "equilateral".to_sym
    #:isosceles
    elsif a == b && a + b > c || a == c && a + c > b || b == c && b + c > a 
      "isosceles".to_sym
    #:scalene
    else a != b && b != c && a != c 
      "scalene".to_sym
    end
  end

  class TriangleError < StandardError
  end
end
