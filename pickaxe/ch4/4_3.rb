# frozen_string_literal: true

# 4.3 블록과 반복자
# for i in 0..4
#   word = top_five[i][0]
#   count = top_five[i][1]
#   puts "#{word}: #{count}"
# end
#
# top_five.each do |word, count|
#   puts "#{word}: #{count}"
# end
#
# puts top_five.map { |word, count| "#{word}: #{count}" }
#
# # 블록
# some_array.each { |value| puts value * 3 }
# sum = 0
# other_array.each do |value|
#   sum += value
#   puts value / sum
# end

sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end
puts sum

value = 'some shape'
[1, 2].each { |value| puts value }
puts value

square = 'some shape'
sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value
  sum += square
end
puts sum
puts square

# 반복자 구현하기
def two_times
  yield
  yield
end
two_times { puts 'Hello' }

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fib_up_to(1000) { |f| print f, ' ' }
puts

[1, 3, 5, 7, 9].each { |i| puts i }

class Array
  def find
    each do |value|
      return value if yield(value)
    end
    nil
  end
end

puts [1, 3, 5, 7, 9].find { |v| v*v > 30 }

# collect
["H", "A", "L"].collect { |x| x.succ } #=> ["I", "B", "M"]

# inject
[1, 3, 5, 7].inject(0) { |sum, element| sum + element } #=> 16
[1, 3, 5, 7].inject(1) { |product, element| product * element } #=> 105
[1, 3, 5, 7].inject { |sum, element| sum + element } #=> 16
[1, 3, 5, 7].inject { |product, element| product * element } #=> 105

# Enumerator
a = [1, 3, 'cat']
h = { dog: 'canine', fox: 'vulpine' }
enum_a = a.to_enum
enum_h = h.to_enum
p enum_a.next #=> 1
p enum_h.next #=> [:dog, "canine"]
p enum_a.next #=> 3
p enum_h.next #=> [:fox, "vulpine"]

a = [1, 3, 'cat']
enum_a = a.each
p enum_a.next #=> 1
p enum_a.next #=> 3
p enum_a.next #=> "cat"

short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

# Enumerator도 객체다
