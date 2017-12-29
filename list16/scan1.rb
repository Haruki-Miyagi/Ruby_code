"abracatabra".scan(/.a/) do |matched|
  p matched
end
puts "--------------"

"abracatabra".scan(/(.)(a)/) do |matched|
  p matched
end
puts "--------------"

"abracatabra".scan(/(.)(a)/) do |a, b|
  p a+"-"+b
end
puts "---------------"

str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"
