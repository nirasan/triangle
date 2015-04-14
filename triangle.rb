class Triangle
  def self.name_for(n1, n2, n3)
    if self.triangle?(n1, n2, n3)
      if self.equilateral_triangle?(n1, n2, n3)
        "正三角形ですね！"
      elsif self.isosceles_triangle?(n1, n2, n3)
        "二等辺三角形ですね！"
      else
        "不等辺三角形ですね！"
      end
    else
      "三角形じゃないです＞＜"
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
