string = "bbb\nbbb"
p string.gsub(/^bbb/, "morning")
string = "bbb\nbbb\nbbb"
p string.gsub(/^bbb/, "morning")

puts " => 行末を指定 "
string = "aaabbb\nbbbaaa"
p string.gsub(/bbb$/, "morning")
string = "aaabbb\naaabbb\nbbbz"
p string.gsub(/bbb$/, "morning")

puts " => 先頭を指定"
string = "aaabbb\naaabbb"
p string.gsub(/\Aaaa/, "morning")
string = "bbbbb\nbbbbb\nbbbz"
p string.gsub(/\Abb/, "morning")

puts "=> 末尾を指定したい場合"
string = "aaabbb\naaabbb"
p string.gsub(/bbb\z/, "morning")
string = "bbbbb\nbbbbb\nbbb"
p string.gsub(/bbb\z/, "morning")
