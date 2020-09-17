class Triangle
  attr_accessor :l1, :l2, :l3, :kind
  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def valid?
    (@l1 + @l2 > @l3) && (@l2 + @l3 > @l1) && (@l1 + @l3 > @l2)
  end

  def kind
  if (@l1 <=0 || @l2 <=0 || @l3 <=0) || valid? == false
    raise TriangleError
  elsif @l1 == @l2 && @l1 == @l3
      self.kind = :equilateral
    elsif (@l1 != @l2) &&  (@l2 != @l3) && (@l1 != @l3)
      :scalene
    elsif (@l2 = @l3) || (@l1 == @l2) || (@l1 == @l3)
      self.kind = :isosceles
  end
  end

class TriangleError < StandardError
end

end
