sum = 0
outcome = {"参加費"=>1000, "ストラップ代"=>1000, "懇親会会費"=>4000}
outcome.each do |pair|
  sum += pair[1]  # 値を指定している
end
puts "合計 : #{sum}"

 puts "---------------"

sum = 0
outcome = {"参加費"=>1000, "ストラップ代"=>1000, "懇親会会費"=>4000}
outcome.each do |item, price|
  sum += price
end
puts "合計 : #{sum}"

puts "------------------"

def call_each(ary, &block)
  ary.each(&block)
end
 
call_each [1, 2, 3] do |item|
  p item
end
