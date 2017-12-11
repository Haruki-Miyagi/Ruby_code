names = [
"小林",
"林",
"高野",
"盛岡"
]

names.each do |n|
	puts n
end
puts names.size


sym = :foo
p sym.to_s
p "foo".to_sym


# ハッシュ
address = {name:"高橋", furigana:"タカハシ"}

address.each do |key, value|
	puts "#{key}: #{value}"
end
address[:tel] = "1234567890"
puts address

#nil
puts address[:full_name]
