def string_message(str = '')
   if str.empty?
    "It's an empty string!"
  else
     "The string is nonempty."
  end
 end

puts string_message("foobar") #The string is nonempty.
puts string_message("") #It's an empty string!
puts string_message  #It's an empty string!

=begin
＝＝＝＝＝＝＝＝＞入れ替え
	def string_message(str = '')
>>   return "It's an empty string!" if str.empty?
>>   return "The string is nonempty."
>> end

=end

puts "------------"
p "foo bar     baz".split
p "fooxbarxbazx".split('x')

puts "------------"
a = [42, 8, 17]
p a.first
p a.last

p a.include?(42)
p a.sort
p a.shuffle

p a.sort!
p a

p a.push(6)
p a << 7
p a << "foo" << "bar"
p a.join
p a.join(', ')
p y = %w[foo bar baz quux]         # %wを使って文字列の配列に変換
p ('a'..'e').to_a
 
 puts "---------------"
 puts (1..5).each { |i| puts 2 * i }
p (1..5).map { |i| i**2 }
p "name".split('')
puts "------------"
h1 = { :name => "Michael Hartl", :email => "michael@example.com" }
h2 = { name: "Michael Hartl", email: "michael@example.com" }
p h1 == h2

puts "--------------"

params = {}        # 'params' というハッシュを定義する 
params[:user] = { name: "Michael Hartl", email: "mhartl@example.com" }
p  params
p params[:user][:email]

puts "-------------"
puts (1..5).to_a 
puts (1..5).to_a.inspect
puts :name, :name.inspect
puts "It worked!", "It worked!".inspect
 p :name  
 p "hello".reverse
 
puts "=--------------"

puts "HELLO".downcase
y = "hello"
puts y.upcase
puts y
puts y.upcase!
puts y
puts "HELLO".downcase!

puts "---------------"
 x = "foo"
 y = ""
 puts "x is not empty" if !x.empty?
 puts "Both strings are empty" if x.empty? && y.empty?
 puts "One of the strings is empty" if x.empty? || y.empty?
 p nil.to_s
 p  nil.to_s.empty?

 string = "foobar"
 puts "The string '#{string}' is nonempty." unless string.empty?
 puts "---------------"
 
s = "racecar"
puts "It's a palindrome!" if s == s.reverse




