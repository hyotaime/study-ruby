# frozen_string_literal: true

# 2.7 블록과 반복자

# 한 줄의 코드는 중괄호
# 여러 줄의 코드는 do ~ end
def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end
call_block { puts 'In the block' }

def who_says_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end
who_says_what { |person, phrase| puts "#{person} says #{phrase}" }

animals = %w(ant bee cat dog)
animals.each { |animal| puts animal }

['cat', 'dog', 'horse'].each { |name| print name, ' ' }
5.times { print '*' }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }
puts
