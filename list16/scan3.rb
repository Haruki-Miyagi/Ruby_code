puts "=> escape（文字列のメタ文字をエスケープする）"
p Regexp.escape("a[b]c{d}")
p Regexp.new(Regexp.escape("a[b]c[d]"))

puts "=> quote（eacapeメソッドの別名）"
p Regexp.quote("a[b]c{d}")
p Regexp.new(Regexp.quote("a[b]c[d]"))

puts "=> new（Regexpクラスのオブジェクトを生成する） "
p Regexp.new("abcdefg")
p Regexp.new("abcdefg", Regexp::IGNORECASE)
p Regexp.new("abcdefg", Regexp::MULTILINE)
p Regexp.new("abcdefg", Regexp::EXTENDED)

puts " => split, split!（マッチした部分を分割し配列で返す）"
string = "Hello, Ruby, World"
p string.split(/\s*,\s*/) # 「,」で分割

puts "=> 繰り返しの表現"
puts "=>0回以上の繰り返しでは*を使用します。"
string = "bbb"
p string.gsub(/a*b/, "morning ")

string = "abbbabbaaaaab"
p string.gsub(/a*b/, "morning ")

puts "=> 1回以上の繰り返しでは"+"を使用します。"
string = "bbb"
p string.gsub(/a+b/, "morning ")

string = "abbbabbaaaaa"
p string.gsub(/a+b/, "morning ")

puts "=> 繰り返し回数が0回か1回のときは?を使用します。"
string = "bbb"
p string.gsub(/a?b/, "morning ")
string = "aab"
p string.gsub(/a?b/, "morning ")

puts "=> 繰り返し回数がちょうどn回のときは{n}を使用します。"
string = "bbb"
p string.gsub(/b{3}/, "morning ")
string = "bb"
p string.gsub(/b{3}/, "morning ")
