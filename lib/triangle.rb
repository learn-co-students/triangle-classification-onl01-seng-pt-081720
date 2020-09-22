class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    
    # had to add the extra if/elsif/else at beginning for the invalid checking to raise the errors , then , if it is valid, it checks what kind it is
    
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError
      
    elsif side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1
      raise TriangleError
      
    else
      if side_1 == side_2 && side_1 == side_3
       :equilateral
      elsif side_1 == side_3 || side_2 == side_3 || side_1 == side_2
        :isosceles
      elsif side_1 != side_2 && side_2 != side_3
        :scalene
      end
     end
     
  end
  
  class TriangleError < StandardError
    
  end
  
end
