# frozen_string_literal: true

# 4. Use num and string together

var1 = 2
var2 = '5'

# puts var1 + var2
puts var1.to_s + var2
# => 25
puts var1 + var2.to_i
# => 7
puts '15'.to_f
# => 15.0
puts '99.999'.to_f
# => 99.999
puts '99.999'.to_i
# => 99
puts '5 is my favorite number!'.to_i
# => 5
puts 'my favorite number is 5!'.to_i
# => 0

# puts는 to_s를 자동으로 호출한다.

# gets
puts '안녕하세요, 성함이 어떻게 되시나요?'
name = gets.chomp
puts '네 이름이 ' + name + ' 이군요? 아주 좋은 이름이네요.'

# 통성명하는 프로그램
puts '안녕하세요, 성함이 어떻게 되시나요?'
name = gets.chomp
puts "성함이 #{name}이군요? 아주 좋은 이름이네요."

# 행운의 숫자를 묻는 프로그램
puts '행운의 숫자는 무엇인가요?'
luckynum = gets.chomp
puts "#{luckynum}보다는 #{luckynum.to_i + 1}가 더 좋은 숫자입니다."
