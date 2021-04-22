class Book
  attr_writer :title

  def initialize
    @title = ""
  end

  def title
    output_string = ""
    little_words = ["and", "the", "in", "of", "an", "a"]

    @title.split.each_with_index do |word, index|
      output_string << if index.zero? # capitalize the first word
        "#{word.capitalize} "
      elsif little_words.include? word # do not capitalize "little words"
        "#{word} "
      else
        "#{word.capitalize} " # capitalize words that are NOT "little words" including i
      end
    end
    output_string.strip
  end
end
