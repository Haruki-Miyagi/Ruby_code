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

puts "----------------"
list = ["a", "b", "c", "d"]
list.each_with_index do |elem, i|
  print i+1,"番目の要素は",elem,"です。\n"
end

puts "---------------"
ary1 = [1, 2, 3, 4, 5]
ary2 = [10, 20, 30, 40, 50]
ary3 = [100, 200, 300, 400, 500]
 
i = 0
result = []
while i < ary1.length
  result << ary1[i] + ary2[i] + ary3[i]
  i += 1
end
p result  #=> [111, 222, 333, 444, 555]
