def string_message(str = '')
	if str.empty?
		"It's an empty string!"
	else
		"The string is nonempty."
	end
end

puts string_message("foobar")
puts string_message("")
puts string_message


def message(str = '')
	return "It's an empty string!" if str.empty?
	return "The string is nonempty."
end

puts "---"
puts message("hello")
puts "---"
puts message
puts "---"
puts message("")
puts "------------------"

p  %w[a b c].map { |char| char.upcase }
p  %w[A B C].map { |char| char.downcase }
puts "------------------"
s = "foobar"
puts s.class
puts s.class.superclass
puts s.class.superclass.superclass
p s.class.superclass.superclass.superclass

puts "--------------"
p "      ".empty?
#p nil.blank
puts "---------------"

puts "#{:success}"

flash = { success: "It worked!", danger: "It failed." }
p "#{flash[:success]}"
puts "#{flash[:danger]}"

puts "--------------"

def alert_for(flash_type){
    success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
end

puts alert_for('alert-sssssssssssssss')
puts alert_for(:error)
puts alert_for(:alert)
puts alert_for(:notice)

puts alert_for('alert-success')
puts alert_for(:success)

# ====================================================-
# 多重代入
a, b = 1, 2
p a # => 1
p b # => 2
a, b = [1, 2, 3]
p a # => 1
p b # => 2
# ====
a, *b = [1, 2, 3]
p a # => 1
p b # => [2, 3]
# ====
a, b, c = [1, 2]
p a # => 1
p b # => 2
p c # => nil
# ===
# 入れ替え
a, b = b, a
# ===
# 自己代入
p a += 1   # a = a + 1
puts "test b ?"
p b
p b ||= 2  # b = b || 2

c = 1
p c ||= 4 # c = 1

puts "メタプログラミング"
# Cクラスを定義
class C; end

# class_evalメソッドで、Cクラスにmメソッドを定義
C.class_eval %Q{
  def m
    puts "hello"
  end
}

# mメソッドを実行
C.new.m
# => hello

puts "test"
p s = [[1,2,3], [1,[1,2,3]],[1,[2,[5,6,7]]],2]

p t = s.flatten

#  [1,2,3].concat(2,3,4) error
p [1,2,3].concat([2,3,4])
p ["hd","fff"].join(',')
p ["hd","fff"].join(',      ')

p tt = Time.new
# p tt.to_date ruby (NoMethodError)
p tt.strftime"%Y/%m/%d"


puts "code check"
arr = [[:ruby, 1], [:python, 2], [:java, 3]]
p arr.assoc(:ruby) # [:ruby, 1]

arr = [[:ruby, 1], [:python, 2], [:java, 3], [[abc: 4],[rails: 5]]]
p arr.assoc(:rails)
p arr.assoc(:abc)
p arr.assoc(:python)

puts "transpose"
arr = [[1, 2, 3], ["Ruby", "Python", "Java"]]
p arr.transpose # [[1, "Ruby"], [2, "Python"], [3, "Java"]]

arr = [[1, 2, 3], ["Ruby", "Python", "Java"],["Ruby", "Python", "Java"]]
p arr.transpose # [[1, "Ruby"], [2, "Python"], [3, "Java"]]

puts "------> error check transpose" # -> errr element size differs (2 should be 3) (IndexError)
# arr = [[1, 2, 3], ["Ruby", "Python"]]
# p arr.transpose # [[1, "Ruby"], [2, "Python"], [3, "Java"]]


p arr1 = [1, 2, 3]
p arr2 = ["Ruby", "Python", "Java"]
p arr3 = ["Ruby", "Python", "Java"]
p arr1.zip(arr2,arr3,arr3)    # [[1, "Ruby"], [2, "Python"], [3, "Java”]]

puts "------> error check zip -> nil"
p arr1 = [1, 2, 3]
p arr2 = ["Ruby", "Python"]
p arr1.zip(arr2)# [[1, "Ruby"], [2, "Python"], [3, nil]]

p arr1 = [1, 2]
p arr2 = ["Ruby", "Python", "rails"]
p arr1.zip(arr2)# [[1, "Ruby"], [2, "Python"]]

p 'Ruuuubbbbyyyyy'.squeeze('ub')
p 'Ruuuubbbbyyyyy'
p 'Ruuuubbbbyyyyy'.squeeze('a')
