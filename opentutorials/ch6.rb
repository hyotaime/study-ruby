# frozen_string_literal: true

# 6. Flow Control
puts 1 > 2
puts 1 < 2
puts 5 >= 5
puts 5 <= 4

puts 'cat' < 'dog'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
end

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end

command = ''
while command != 'bye'
  puts command
  command = gets.chomp
end
puts 'Come again soon!'

# 윤년
puts '시작 연도를 입력하세요.'
start_year = gets.chomp.to_i
puts '마지막 연도를 입력하세요.'
end_year = gets.chomp.to_i
puts '윤년은 다음과 같습니다.'
year = start_year
while year <= end_year
  puts year if (year % 4).zero? && (year % 100 != 0 || (year % 400).zero?)
  year += 1
end
