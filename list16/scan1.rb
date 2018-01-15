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

puts "--------------"
string = "hello, hello, hello Ruby"
p string.gsub(/hello/, "morning")

puts "文字列を変数で渡す"
string = "hello, hello, hello Ruby"
regx = "hello"
p string.gsub(/#{regx}/, "morning")

puts "ハッシュで置き換える"
hash = {'r'=>'Ruby', 'b'=>'プログラミング'}
p "This is rb language".gsub(/[rb]/, hash)

puts "ブロックで置き換え"
string = "hello, ruby"
p string.gsub(/\w+/) {|s| s.upcase }

puts "----------------"
string = "hello, hello, hello Ruby"
p string.sub(/hello/, "morning")

puts "---"
string = "hello, hello, hello,ruby"
p string.sub(/hello/) {|s| s.upcase}
