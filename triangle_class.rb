class Triangle

  @@message = {
      equilateral_triangle: "正三角形ですね！",
      isosceles_triangle: "二等辺三角形ですね！",
      scalene_triangle: "不等辺三角形ですね！",
      none: "三角形じゃないです＞＜"
  }
  def self.get_message
    @@message
  end

  def self.name_for(n1, n2, n3)
    if self.triangle?(n1, n2, n3)
      if self.equilateral_triangle?(n1, n2, n3)
        @@message[:equilateral_triangle]
      elsif self.isosceles_triangle?(n1, n2, n3)
        @@message[:isosceles_triangle]
      else
        @@message[:scalene_triangle]
      end
    else
      @@message[:none]
    end
  end

  def self.triangle?(n1, n2, n3)
    n1 + n2 > n3 && n2 + n3 > n1 && n3 + n1 > n2
  end

  def self.equilateral_triangle?(n1, n2, n3)
    self.triangle?(n1, n2, n3) && n1 == n2 && n2 == n3 && n3 == n1
  end

  def self.isosceles_triangle?(n1, n2, n3)
    self.triangle?(n1, n2, n3) && !self.equilateral_triangle?(n1, n2, n3) && (n1 == n2 || n2 == n3 || n3 == n1)
  end
end
