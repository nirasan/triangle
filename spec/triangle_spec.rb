require File.expand_path(File.dirname(__FILE__) + '/../triangle_class')

describe Triangle do
  it "name_for method" do
    expect(Triangle.name_for(1, 1, 1)).to eq "正三角形ですね！"
    expect(Triangle.name_for(2, 2, 1)).to eq "二等辺三角形ですね！"
    expect(Triangle.name_for(2, 3, 4)).to eq "不等辺三角形ですね！"
    expect(Triangle.name_for(1, 2, 3)).to eq "三角形じゃないです＞＜"
  end

  it "triangle? method" do
    expect(Triangle.triangle?(1, 2, 3)).to eq false
    expect(Triangle.triangle?(2, 3, 4)).to eq true
    expect(Triangle.triangle?(2, 2, 1)).to eq true
    expect(Triangle.triangle?(1, 1, 1)).to eq true
  end
end
