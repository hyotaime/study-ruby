# frozen_string_literal: true

# 2.8 읽기와 쓰기

# printf 매개 변수를 포맷 문자열에 맞춰 출력
# print 줄 바꿈 없이 출력
# puts 줄 바꿈을 포함하여 출력

printf "Number: %5.2f, \nString: %s\n", 1.23, 'hello'

line = gets
print line

while line = gets
  print line
end
