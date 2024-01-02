# frozen_string_literal: true

# 2.5 제어 구조

today = Time.now
if today.saturday?
  puts 'Do chores around the house'
elsif today.sunday?
  puts 'Relax'
else
  puts 'Go to work'
end

# while
while (line = gets)
  puts line.downcase
end

# 출력문 뒤에 조건문을 쓸 수 있다.
square = 2
puts square = square * square while square < 1000
