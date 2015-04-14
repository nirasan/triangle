require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify {
    expect(Triangle.name_for(0,0,0)).to eq ""
  }
end
