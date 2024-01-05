# 3.4 변수
person = 'Tim'
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

# person1의 주소를 person2도 가리키는 경우
person1 = 'Tim'
person2 = person1
person1[0] = 'J' # Frozen String일 경우 ERROR가 발생하기 때문에 첫 줄의 frozen_string_literal: true를 삭제
puts "person1 is #{person1}"
puts "person2 is #{person2}"

# person1을 복제 하는 경우
person1 = 'Tim'
person2 = person1.dup
person1[0] = 'J'
puts "person1 is #{person1}"
puts "person2 is #{person2}"

# person1의 modify를 막는 경우
person1 = 'Tim'
person2 = person1
person1.freeze
person2[0] = 'J' # Can't modify frozen String (FrozenError)
puts "person1 is #{person1}"
puts "person2 is #{person2}"
