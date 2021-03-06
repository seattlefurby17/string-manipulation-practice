# frozen_string_literal: true

# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

my_sentence = 'I love Ada'

def sort_by_length(my_sentence)
  return [] if my_sentence.empty?

  array_sentence = my_sentence.split
  sorted_array = []

  until array_sentence.empty?
    shortest_word_length = nil

    array_sentence.each do |word|
      # Set shortest_word_length to word.length at index 0
      if shortest_word_length.nil?
        shortest_word_length = word.length
      end

      shortest_word_length = word.length if word.length < shortest_word_length
    end

    array_sentence.each_with_index do |word, i|
      next unless word.length == shortest_word_length

      sorted_array << word
      array_sentence.delete_at(i)
      break

    end

  end

  return sorted_array
end

