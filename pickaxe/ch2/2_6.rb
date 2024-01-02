# frozen_string_literal: true

# 2.6 정규 표현식

/Perl|Python/
/P(erl|ython)/
/\d\d:\d\d:\d\d/ # 12:34:56 형태의 시간
/Perl.*Python/ # Perl, 0개 이상의 문자들, Python
/Perl Python/ # Perl, 공백, Python
/Perl *Python/ # Perl, 0개 이상의 공백, Python
/Perl +Python/ # Perl, 1개 이상의 공백, Python
/Perl\s+Python/ # Perl, 1개 이상의 공백 문자, Python
/Ruby (Perl|Python)/ # Ruby, Perl 또는 Python

line = gets
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end

line = gets
newline = line.sub(/Perl/, 'Ruby')
puts newline
newerline = newline.gsub(/Python/, 'Ruby')
puts newerline

line = gets
newline = line.sub(/Perl|Python/, 'Ruby')
puts newline
