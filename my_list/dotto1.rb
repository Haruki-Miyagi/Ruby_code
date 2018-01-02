puts "ドットインストールの復習(1..12cd )"
p Rational(2, 5) + Rational(2, 5)
p 2/5r + 2/3r

p 34.3.round
p 34.3.floor
p 34.3.ceil
puts "hello" * 10

puts "配列-----------"
colors = [
  "red",
  "blue",
  "yellow"
]

p colors[-1]
p colors[0..2] #["red", "blue", "yellow"]
p colors[0...2] #["red", "blue"]
p colors[8] #nil

colors[0] = 'pink'
colors[1..2] = ['white', 'black']
colors.push('green')
colors << 'gold'
p colors #["pink", "white", "black", "green", "gold"]

puts "オブジェクトを変換-----------"
scores = {
  taguch: 200, fkoji: 400
}
p scores.to_a #[[:taguch, 200], [:fkoji, 400]]
p scores.to_a.to_h #{:taguch=>200, :fkoji=>400}

puts "記法----------------"
puts "he\"llo"
puts'he\'llo'
puts '------'#''or""の中に'や"を加えたい時に使う
puts %Q(he"llo) #Qは省略可
puts %(he"llo) #Q省略バージョン
puts %q(he'llo)

puts "書式付きで値を埋め込む"
p "name: %s" % "taguchi"
p "name: %10s" % "taguhi" #"name:     taguhi"
p "name: %-10s" % "taguchi" #"name: taguchi   "
p "id: %05d, rate: %10.2f" % [355, 3,28233] #"id: 00355, rate:       3.00"

printf("name: %10s\n", "taguchi")#name:    taguchi
printf("id: %05d, rate: %10.2f\n",355, 3.834)#id: 00355, rate:       3.83

p sprintf("name: %10s\n", "taguchi")#"name:    taguchi\n"
p sprintf("id: %05d, rate: %10.2f\n",355, 3.834)#"id: 00355, rate:       3.83\n"
