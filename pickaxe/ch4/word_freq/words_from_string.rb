# frozen_string_literal: true

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

