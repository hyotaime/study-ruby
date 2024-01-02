# frozen_string_literal: true

# 2.4 심벌

inst_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}
p inst_section[:oboe]
p inst_section[:cello]
p inst_section['cello'] # 문자열과 심벌은 다르다

puts "An Oboe is a #{inst_section[:oboe]} instrument"
