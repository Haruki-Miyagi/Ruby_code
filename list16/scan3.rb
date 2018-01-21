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

puts "=> "
