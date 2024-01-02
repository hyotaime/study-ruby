# frozen_string_literal: true

# 2.3 배열과 해시

a = [1, 'cat', 3.14]
puts "The first element is #{a[0]}"
a[2] = nil
puts "The array is now #{a.inspect}"

a = ['ant', 'bee', 'cat', 'dog', 'elk']
puts a[0]
puts a[3]
a = %w{ ant bee cat dog elk }
puts a[0]
puts a[3]

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}
p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']

histogram = Hash.new(0)
p histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']
