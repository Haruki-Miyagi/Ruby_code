puts "ドットインストール"
puts "module, (名前空間)"

def movie_encode
end

def movie_export
end

module Movie
  VERSION = 1.1
  def self.encode
    puts "encoding..."
  end

  def self.export
    puts "exporting..."
  end

end

Movie.encode
Movie.export
p Movie::VERSION

puts "mixin--------------"

module Debug

  def info
  puts "#{self.class}, debug info...."
  end

end

 class Player
   include Debug
 end

 class Monster
   include Debug
 end
 Player.new.info
 Monster.new.info

puts "例外処理-------------"
class MyError < StandardError; end

x = gets.to_i

begin
  if x == 3
    raise MyError
  end
  p 100/x
rescue MyError
  puts "not! 3!"
rescue => ex
  p ex.message
  p ex.class
  puts "stopped!"
ensure
  puts "--END--"
end
