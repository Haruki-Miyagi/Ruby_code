list = ["a", "b", "c", "d"]
for i in 0..3
  print i+1,"番目の要素は",list[i],"です。\n"
end

puts "----------------"
list = [1, 3, 5, 7, 9]
sum = 0
for i in 0..4
  sum += list[i]
end
print "合計:",sum,"\n"

puts "----------------"
list = [1, 3, 5, 7, 9]
sum = 0
list.each do |elem|
  sum += elem
end
print "合計:",sum,"\n"
