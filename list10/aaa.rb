
puts "Exception----------"

1.upto(10) do |i|
  begin
  p i
  sleep(1)
  rescue Exception => e
    p e.class
    p "catch!"
  end
end
=begin
ctrl-c で処理を停止しようとすると例外が発生し、処理が続行する
=end
