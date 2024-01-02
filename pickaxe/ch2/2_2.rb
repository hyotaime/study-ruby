# frozen_string_literal: true

# 2.2 루비 기초

def say_goodnight(name)
  result = "Good night, " + name
  return result
end

# 잠잘 시간입니다.
puts say_goodnight("John-boy")
puts say_goodnight("Mary-Ellen")

puts "And good night, \nGrandma"

# 표현식 보간 (Expression Interpolation)
def say_goodnight2(name)
  result = "Good night, #{name}"
  return result
end
puts say_goodnight2("Pa")

def say_goodnight3(name)
  result = "Good night, #{name.capitalize}"
  return result
end
puts say_goodnight3("uncle")

def say_goodnight4(name)
  "Good night, #{name.capitalize}"
end
puts say_goodnight4("ma")
