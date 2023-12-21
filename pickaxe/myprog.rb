# frozen_string_literal: true

# puts "Hello, Ruby Programmer"
# puts "It is now #{Time.now}"
# puts "gin joint".length
# puts "Rick".index("c")
# puts 42.even?
# puts sam.play(song)
# num = -1234
# puts num.abs
# gets.split.each { |n| puts n}

# BOJ 15080
# time1 = gets.chomp.split(?:).each { |n| }
# time2 = gets.chomp.split(?:).each { |n| }
# h = time2[0].to_i - time1[0].to_i
# m = time2[1].to_i - time1[1].to_i
# s = time2[2].to_i - time1[2].to_i
# rst = h*3600 + m*60 + s
# puts rst.negative? ? rst + 86400 : rst

# return 생략 가능
# def say_goodnight(name)
#   "Good night, #{name.capitalize}"
# end
# puts say_goodnight('uncle')

# 2.4 심벌
# student = {
#   name: 'Park',
#   age: 20,
#   major: 'Computer Science & Engineering'
# }
# puts "My name is #{student[:name]}. I'm #{student[:age]} years old. I major in #{student[:major]}."

# 2.5 제어구조
# if
# today = Time.now
# if today.saturday?
#   puts 'Do chores around the house'
# elsif today.sunday?
#   puts 'Relax'
# else
#   puts 'Go to work'
# end

# while
# while (line = gets)
#   puts line.downcase
# end

# 출력문 뒤에 조건문을 쓸 수 있다.
# puts "Danger, Will Robinson" if radiation > 3000
# square = 2
# puts square = square*square while square < 1000

# 2.6 정규 표현식
# /Perl|Python/
# /P(erl|ython)/
# /\d\d:\d\d:\d\d/
# /Perl.*Python/

# line = gets
# if line =~ /Perl|Python/
#   puts "Scripting language mentioned: #{line}"
# end

# line = gets
# newline = line.sub(/Perl/, 'Ruby')
# newerline = newline.gsub(/Python/, 'Ruby')
# puts newerline

# 2.7 블록과 반복자
# def call_block
#   puts 'Start of method'
#   yield
#   yield
#   puts 'End of method'
# end
# call_block { puts 'In the block' }

# def who_says_what
#   yield('Dave', 'hello')
#   yield('Andy', 'goodbye')
# end
# who_says_what { |person, phrase| puts "#{person} says #{phrase}" }

# animals = %w(ant bee cat dog)
# animals.each { |animal| puts animal }

# 3 클래스, 객체, 변수
class BookInStock
  attr_reader :isbn, :price
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  # def price=(new_price)
  #   @price = new_price
  # end
  def price_in_cents
    Integer(price * 100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end
# b1 = BookInStock.new('isbn1', 33.80)
# puts "ISBN = #{b1.isbn}"
# puts "Price = #{b1.price}"
# b1.price = b1.price * 0.75
# puts "New price = #{b1.price}"
book = BookInStock.new('isbn1', 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
