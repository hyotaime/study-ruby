# frozen_string_literal: true
require_relative 'words_from_string'
require_relative 'count_frequency'

raw_text = %(The problem breaks down into two parts. First, given some text as a
string, return a list of words. That sounds like an array. Then, build a count
for each distinct word. That sounds like a use for a hash---we can index it with
the word and use the corresponding entry to keep a count.)

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by { |word, count| count }
top_five = sorted.last(5)

for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end

require_relative 'words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(''))
    assert_equal([], words_from_string('   '))
  end
  def test_single_word
    assert_equal(['cat'], words_from_string('cat'))
    assert_equal(['cat'], words_from_string('   cat   '))
  end
  def test_many_words
    assert_equal(%w[the cat sat on the mat], words_from_string('the cat sat on the mat'))
  end
  def test_ignores_punctuation
    assert_equal(%w[the cat's mat], words_from_string("<the!> cat's, -mat-"))
  end
end

require_relative 'count_frequency'
require 'test/unit'

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end
  def test_single_word
    assert_equal({ 'cat' => 1 }, count_frequency(['cat']))
  end
  def test_two_different_words
    assert_equal({ 'cat' => 1, 'sat' => 1 }, count_frequency(['cat', 'sat']))
  end
  def test_two_words_with_adjacent_repeat
    assert_equal({ 'cat' => 2, 'sat' => 1 }, count_frequency(['cat', 'cat', 'sat']))
  end
  def test_two_words_with_non_adjacent_repeat
    assert_equal({ 'cat' => 2, 'sat' => 1 }, count_frequency(['cat', 'sat', 'cat']))
  end
end
