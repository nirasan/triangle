require File.expand_path(File.dirname(__FILE__) + '/../triangle_class')

describe Triangle do
  it "name_for method" do
    [
        [1, 1, 1, :equilateral_triangle],
        [9999, 9999, 9999, :equilateral_triangle],
        [2, 2, 1, :isosceles_triangle],
        [1, 2, 2, :isosceles_triangle],
        [2, 1, 2, :isosceles_triangle],
        [2, 3, 4, :scalene_triangle],
        [3, 4, 2, :scalene_triangle],
        [4, 2, 3, :scalene_triangle],
        [1, 2, 3, :none],
        [3, 1, 2, :none],
        [2, 3, 1, :none],
    ].each do |cond|
      expect(Triangle.name_for(cond[0], cond[1], cond[2])).to eq Triangle.get_message()[cond[3]]
    end
  end

  it "triangle? method" do
    [
        [1, 2, 3, false],
        [3, 1, 2, false],
        [3, 2, 1, false],
        [1, 99, 100, false],
        [1, 100, 100, true],
        [2, 3, 4, true],
        [2, 2, 1, true],
        [1, 1, 1, true],
    ].each do |cond|
      expect(Triangle.triangle?(cond[0], cond[1], cond[2])).to eq cond[3]
    end
  end

  it "equilateral_triangle? method" do
    [
        [1, 2, 3, false],
        [3, 1, 2, false],
        [3, 2, 1, false],
        [1, 99, 100, false],
        [1, 100, 100, false],
        [2, 3, 4, false],
        [2, 2, 1, false],
        [1, 1, 1, true],
    ].each do |cond|
      expect(Triangle.equilateral_triangle?(cond[0], cond[1], cond[2])).to eq cond[3]
    end
  end

  it "isosceles_triangle? method" do
    [
        [1, 2, 3, false],
        [3, 1, 2, false],
        [3, 2, 1, false],
        [1, 99, 100, false],
        [1, 100, 100, true],
        [2, 3, 4, false],
        [2, 2, 1, true],
        [1, 2, 2, true],
        [2, 1, 2, true],
        [1, 1, 1, false],
    ].each do |cond|
      expect(Triangle.isosceles_triangle?(cond[0], cond[1], cond[2])).to eq cond[3]
    end
  end
end
