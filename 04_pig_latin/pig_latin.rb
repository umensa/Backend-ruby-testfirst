def translate(phrase)
  # Define vowels to look for
  vowels = ["a", "e", "i", "o", "u"]
  pig_words = []

  phrase.split.each do |word|
    # Find the end of the leading "consonants" (with special case for "qu")
    suffix_start = 0
    prior_ch = ""
    word.each_char do |ch|
      break if vowels.include?(ch) && !(ch == "u" && prior_ch == "q")
      suffix_start += 1
      prior_ch = ch
    end

    # Reorder the prefix (possibly empty string) and suffix, and append "ay"
    prefix = word.slice(0, suffix_start)
    suffix = word.slice(suffix_start, word.length)
    pig_words.push("#{suffix}#{prefix}ay")
  end

  pig_words.join(" ")
end

# def translate(string)
#   vowels = %w[a e i o u] # vowels = 'aeiou'.split('') # vowels = ["a", "e", "i", "o", "u"]
#   words = string.split
#   new_words = []

#   words.each do |word|
#     new_word =
#       if word.match?(/^.*qu/)
#         first_part = word[/^.*qu/]
#         last_part = word.delete first_part
#         last_part + first_part + "ay"

#       else
#         !vowels.include?(word[0])
#         first_part = word[/[^aeiou]*/]
#         last_part = word.delete first_part
#         last_part + first_part + "ay"
#       end
#     new_words.push new_word
#   end
#   new_words.join " "
# end

# Unfinished
# def translate(sentence)
#  vowels = ["a", "e", "i", "o", "u"]
#   sent_array = sentence.chars
#   suffix = ""
#
#   sent_array.each_with_index do |letter, index|
#     if index == 0 && vowels.include?(letter)
#       sentence + "ay"
#     elsif index == 0 && !vowels.include?(letter)
#       i = 1
#       while i < sent_array.length do
#         if vowels.include?(sent_array[i])
#           break
#         else
#           suffix << sent_array[i]
#         end
#       end
#     end
#   end
#   sentence + suffix + "ay"
# end
