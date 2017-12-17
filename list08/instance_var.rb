class Greeting
  def setName(name = "Ruby")
    @name = name   #引数をインスタンス変数@nameに設定
  end
 
  def hello
    print "Hello ", @name,"\n"  #変数@nameは他のメソッドからでも参照可能
  end
end
 
g1 = Greeting.new  #オブジェクトg1を生成
g1.setName("Taro") #g1に名前を設定
g2 = Greeting.new  #オブジェクトg2を生成
g2.setName("Jiro") #g2に名前を設定
g1.hello
g2.hello