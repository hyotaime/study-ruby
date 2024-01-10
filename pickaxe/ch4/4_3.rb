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
## each_with_index
result = []
['a', 'b', 'c'].each_with_index { |item, index| result << [item, index] }
p result #=> [["a", 0], ["b", 1], ["c", 2]]

## char with index
result = []
"cat".each_char.each_with_index { |item, index| result << [item, index] }
p result #=> [["c", 0], ["a", 1], ["t", 2]]

## with_index
result = []
"cat".each_char.with_index { |item, index| result << [item, index] }
p result #=> [["c", 0], ["a", 1], ["t", 2]]

## enum 명시적 생성
enum = "cat".enum_for(:each_char)
p enum.to_a #=> ["c", "a", "t"]

enum_in_threes = (1..10).enum_for(:each_slice, 3)
p enum_in_threes.to_a #=> [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]

# Generator, Filter로서의 Enumerator
triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end
5.times { print triangular_numbers.next, " " }
puts

p triangular_numbers.first(5) #=> [1, 3, 6, 10, 15]

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) { |val| val % 10 == 0 }.first(5) #=> [10, 120, 190, 210, 300]

class Enumerator
  def infinite_select(&block)
    Enumerator.new do |yielder|
      each do |value|
        yielder.yield(value) if block.call(value)
      end
    end
  end
end

p triangular_numbers
  .infinite_select { |val| val % 10 == 0 }
  .infinite_select { |val| val.to_s =~ /3/ }
  .first(10)

# lazy enumerator
def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

p Integer.all.first(10) #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p Integer
  .all
  .select { |i| (i % 3).zero? }
  .first(10) #=> [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

p Integer
  .all
  .select { |i| (i % 3).zero? }
  .select { |i| palindrome?(i) }
  .first(10)

multiple_of_three = Integer
                    .all
                    .select { |i| (i % 3).zero? }

p multiple_of_three.first(10) #=> [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]

m3_palindromes = multiple_of_three
                 .select { |i| palindrome?(i) }
p m3_palindromes.first(10) #=> [3, 6, 9, 33, 36, 39, 63, 66, 69, 93]

multiple_of_three = -> n { (n % 3).zero? }
palindrome = -> n { n = n.to_s; n == n.reverse }

p Integer
  .all
  .select(&multiple_of_three)
  .select(&palindrome)
  .first(10)

# 트랜젝션을 위한 블록

