# frozen_string_literal: true

# 5. More About Methods
puts 'hello '.+ 'world'
puts (10.* 9).+ 9

iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse

puts '네 이름이 뭐니?'
name = gets.chomp
puts '네 이름은 총 ' + name.length.to_s + '글자구나!'


letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts( 'Old Mother Hubbard'.center(lineWidth))
puts( 'Sat in her cupboard'.center(lineWidth))
puts( 'Eating her curds an whey,'.center(lineWidth))
puts( 'When along came a spider'.center(lineWidth))
puts( 'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))

# string formatting
linewidth = 40
str = '--> text <--'
puts str.ljust linewidth
puts str.center linewidth
puts str.rjust linewidth
puts str.ljust(linewidth / 2) + str.rjust(linewidth / 2)

# Angry Boss
puts 'What do you want?'
ans = gets.chomp
puts 'WHADDAYA MEAN "' + ans.upcase + '"?!? YOU\'RE FIRED!!'

# Higher Math
puts 5**2
puts 5**0.5
puts 7 / 3
puts 7 % 3
puts 365 % 7
puts((5 - 2).abs)
puts((2 - 5).abs)

puts rand
puts rand
puts rand
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(1)
puts rand(1)
puts rand(1)
puts rand(999999999999999999999999999999999999999999999999999999999999999999999999999999)
puts 'The weatherman said there is a ' + rand(101).to_s + '% chance of rain,'
puts 'but you can never trust a weatherman.'

# seed value
srand 1976
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(100)
puts ''
srand 1976
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(100)

puts Math::PI
puts Math::E
puts Math.cos(Math::PI / 3)
puts Math.tan(Math::PI / 4)
puts Math.log(Math::E**2)
puts((1 + Math.sqrt(5)) / 2)
