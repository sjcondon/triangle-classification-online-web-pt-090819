class Triangle
	
  attr_accessor :side_1, :side_2, :side_3
  @sides = []

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if((@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)) || ((@side_1 + @side_2 <= @side_3) || (@side_2 + @side_3 <= @side_1) || (@side_1 + @side_2 <= @side_3) || (@side_3 + @side_1 <= @side_2))
      raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif (@side_2 == @side_3) || (@side_1 == @side_3) || @side_2 == @side_1
      :isosceles
    elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_3 != @side_1)
      :scalene
    end
  end

class TriangleError < StandardError

end
end