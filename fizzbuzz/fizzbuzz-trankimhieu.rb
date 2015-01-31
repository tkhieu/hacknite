(1..100).each do |i|
  @string  = ""
  @string += "Fizz" if i.modulo(3) == 0
  @string += "Buzz" if i.modulo(5) == 0
  @string += i.to_s if i.modulo(5) != 0 && i.modulo(3) != 0
  puts @string
end
