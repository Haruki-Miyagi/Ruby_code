names = [
  "abc",
  "def",
  "ghi"
]
p names.class
p names.size

names.each do |n|
  puts n
end
p "--"
p names[0]
p names.first

puts "----------------"

old = {
  h1: 11,
  h2: 22,
  h3: 33
}

old.each do |key, n|
  puts "#{key}, : #{n}"
end

old.each do |key, o|
  puts "#{key.inspect} = #{o.inspect}"
end
