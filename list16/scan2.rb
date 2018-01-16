puts "match-------------"
string = "Rubyの勉強, Railsの学習, Railsの勉強"
md = string.match(/.*の勉強/)
p md[0]

puts "------------------"
str = "りんごが食べたい"
aaa = str.match(/.+が食べたい/)
p aaa[0]

puts "------------------"
string = "Rubyの勉強, Railsの勉強, Railsの学習"
md = string.match(/.*の勉強/)
p md[0]

puts "=> pre_match（マッチした部分の前を取り出す）"
reg = /の勉強/.match("Railsの勉強をしよう")
p reg.pre_match

puts "=> post_match（マッチした部分の後を取り出す）"
reg = /の勉強/.match("Railsの勉強をしよう")
p reg.post_match

puts "------------------"
matched_string = "samurai_value = 1024".match(/(s.*)\s=\s(\d{0,12})/)
p matched_string[0]
p matched_string[1]
p matched_string[2]

puts "=> slice, slice!（マッチした文字列を取り出す）"
p "xxxabcxxxx".slice(/a../)
p "xxxxxxx".slice(/a../) #nil
a = "xxxxaaaxxx"
a.slice!(/a../)
p a

puts "=> =~（マッチした部分のインデックスを返す）"
p /aaa/ =~ "aaabbb"
p /aaa/ =~ "rubyaaa"
p /aaa/ =~ "ruby" #nil

puts "!~ (マッチしなかったらtrueを返す)"
p /aaa/ !~ "aaabbb"
p /aaa/ !~ "rubyaaa"
p /aaa/ !~ "ruby"

puts "scan（マッチした部分をすべて配列で返す）"
string = "of the ruby, by the ruby, for the ruby"
p string.scan(/..by/)
