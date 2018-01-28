string = "9a"
p string.gsub(/\wa/, "morning")
string = "Za"
p string.gsub(/\wa/, "morning")

puts "反対にa-z、A-Z、0-9のうちのいずれの1文字にも一致しない"
string = "暑a"
p string.gsub(/\Wa/, "morning")
string = "\na"

puts '空白文字に\f,\n,\r,\tに一致'
string = "\ra"
p string.gsub(/\sa/, "morning")
string = "\na"
p string.gsub(/\sa/, "morning")

puts '反対に空白文字に\f,\n,\r,\tに一致しない'
string = "Aa"
p string.gsub(/\Sa/, "morning")
string = "0a"
p string.gsub(/\Sa/, "morning")

puts '10進数の数字に一致する場合は\Dを使用します。'
string = "#a"
p string.gsub(/\Da/, "morning")
string = "9a"
p string.gsub(/\Da/, "morning")

puts '10進数の数字に一致する場合は\dを使用します'
string = "Aa"
p string.gsub(/\da/, "morning")
string = "0323-3238-3232"
p string.gsub(/\d{4}/, "morning")
