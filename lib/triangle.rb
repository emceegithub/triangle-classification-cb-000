class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if ((side1 == 0) ||  (side2 == 0) || (side1 == 0))
      raise TriangleError
    elsif ((side1 == side2) && (side2 == side3))
      return :equilateral
    elsif ((side1 == side2) ||  (side2 == side3) || (side1 == side3))
      return :isosceles
    elsif (!(side1 == side2) &&  !(side2 == side3) && !(side1 == side3)) 
      return :scalene
    elsif ((side1 < 0) ||  (side2 < 0) || (side1 < 0))
      return "negative side"
    elsif
      array = [@side1,@side2,@side3]
      array = array.sort
      if (array[2] >= array[0] + array[1])
        return "tri ineq"
      else
        # do nothing
      end
    else
      # do nothing
    end
  end
  
end

class TriangleError < StandardError

end