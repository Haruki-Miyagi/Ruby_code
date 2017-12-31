class RingArray < Array  # スーパークラスを指定する
  def [](i)              # 演算子[]の再定義
    idx = i % size       # 新しいインデックスを求める
    super(idx)           # スーパークラスの同名のメソッドを呼ぶ
  end
end

wday = RingArray["日", "月", "火", "水", "木", "金", "土"]
p wday[6]   #=> "土"
p wday[11]  #=> "木"
p wday[15]  #=> "月"
p wday[-1]  #=> "土"

puts "継承"
puts "練習もう一度(復習)"
class Hello < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end
hoge = Hello["日", "月", "火", "水", "木", "金", "土"]
p hoge[6]   #=> "土"
p hoge[11]  #=> "木"
p hoge[15]  #=> "月"
p hoge[-1]  #=> "土"
p hoge[1111111] #=> "月"
p hoge[111*222] #=> "火"
p 111* 222
p hoge[24642]
