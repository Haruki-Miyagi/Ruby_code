print "[a, b, c] =>"
p  %w[a b c].map { |char| char.upcase }
print "[A, B, C] =>"
p  %w[A B C].map { |char| char.downcase }

puts "map!メソッド------"

num = [122, 123, 125, 135, 3333333]
num.map! {|item| item.to_s(16)}
p num

puts "オブジェクトの同一性-----"
ary1 = []
ary2 = []

print "ary1 =>  "
p ary1.object_id
print 'ary2 =>  '
p ary2.object_id

puts "---------------"
a = false
p item = a || 'Hello'

b = true
p ruby = b && 'Ruby'
=begin
(置き換え)
item = nil
if ary
  item = ary.first
end
=end

puts "----------------"
require "uri"
url = URI.parse("http://www.ruby-lang.org/ja/")
p url.scheme #=> 'http'
p url.host #=> "www.ruby-lang.org"
p url.port #=> 80
p url.to_s #=> "http://www.ruby-lang.org/ja/"
puts "----------------"

class Point
  attr_accessor :x, :y

  def initialize(x = 1, y = 2)
    @x, @y = x, y
  end

  def inspect
    "(#{x}, #{y})"
  end

  def +(other)
    Point.new(x + other.x, y + other.y)
  end

  def -(other)
    Point.new(x - other.x, y - other.y)
  end
end

point1 = Point.new(3, 4)
point2 = Point.new(8, 9)

p point1 # (3, 4)
p point2 # (8, 9)
p point1 + point2 #(11, 13)
p point2 - point1 #(5, 5)
