class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
      :scalene
    end
  end

  def triangle_sides
    if side1 > 0 && side2 > 0 && side3 > 0
      true
    else
      false
    end
  end

  def triangle_inequality
    sum1 = [side1, side2].sum
    sum2 = [side2, side3].sum
    sum3 = [side3, side1].sum

    if sum1 > side3 && sum2 > side1 && sum3 > side2
      true
    else
      false
    end 
  end

  def validate_triangle
    raise TriangleError unless triangle_inequality == true && triangle_sides == true
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
