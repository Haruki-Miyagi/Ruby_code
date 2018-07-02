puts "6/12"
puts "send(メソッド名, 引数)"

class Hoge
  class << self
    def say(name, age)
      if age.empty?
        puts "my name is #{name}, age is secret"
      else
        puts "Hello, #{name}, #{age}"
      end
    end

    def hello
      puts 'Hello world'
    end

    def goodbye
      puts 'Good bye'
    end

    def current_time
      puts Time.now
    end
  end
end

Hoge.say('mikami', 'now_na_young')
method = :say
Hoge.send(method, 'mikami', 'now_na_young')
Hoge.send(method, 'mikami', '')


method = :hello
Hoge.send(method)
Hoge.send(method)

method_list = [:hello, :goodbye, :current_time]
Hoge.send(method_list.sample)

puts "-------------"

p "abcdefg".slice(1, 3)
p "abcdefg".slice(1..3)
p "abcdefg".slice(/\w+/)

p "abcde".delete("cd")
p "abcde".delete("xy")
" hi \t “.strip # => “hi”"

puts "7/2"
p "abcdefg".index("cd") # => 2
p "abcdefg".index("zy") # => nil

p "abcde".include?("bc") #=> true
p "abcde".include?("zy") #=> false

str = <<TEXT
1行目
2行目
3行目
TEXT

p str #=> "1行目\n2行目\n3行目\n"
