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

puts "hoge => HELLO 復習"   #OK!
hello = "hoge, hoge, hoge, Ruby"
hoge = "hoge"
p hello.gsub(/#{hoge}/, 'HELLO')

puts "文字列を変数で渡す"     #OK!
string = "hello, hello, hello Ruby"
regx = "hello"
p string.gsub(/#{regx}/, "morning")

puts "ハッシュで置き換える" #OK!
hash = {'r'=>'Ruby', 'b'=>'プログラミング'}
p "This is rb language".gsub(/[rb]/, hash)

puts "ブロックで置き換え" #OK!
string = "hello, ruby"
p string.gsub(/\w+/) {|s| s.upcase }

puts "----------------"
string = "hello, hello, hello Ruby"
p string.sub(/hello/, "morning")

puts "---"
string = "hello, hello, hello,ruby"
p string.sub(/hello/) {|s| s.upcase}



puts "hoge hoge　復習"
hoge = "hoge, hoge, hoge, Ruby"
p string.sub(/hoge/) {|s| s.upcace}
