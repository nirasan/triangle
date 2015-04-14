#!env ruby
require File.expand_path(File.dirname(__FILE__) + '/triangle_class')

usage = <<"USAGE"
Usage:   #{$0} NUMBER, NUMBER, NUMBER
Example: #{$0} 1, 2, 3
USAGE

if ARGV.size != 3 || !ARGV.all?{|v| /^\d+,?$/.match(v)}
  puts usage
  exit
end

n1, n2, n3 = ARGV.map{|v| v.gsub(/,/, '').to_i}
puts Triangle.name_for(n1, n2, n3)