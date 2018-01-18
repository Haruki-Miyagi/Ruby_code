puts "=> escape（文字列のメタ文字をエスケープする）"
p Regexp.escape("a[b]c{d}")
p Regexp.new(Regexp.escape("a[b]c[d]"))

puts "=> quote（eacapeメソッドの別名）"
p Regexp.quote("a[b]c{d}")
p Regexp.new(Regexp.quote("a[b]c[d]"))

puts "=>  "
