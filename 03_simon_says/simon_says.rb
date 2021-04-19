# Simon says echo should echo hello
def echo(hello)
  hello
end

# Simon says shout should shout hello
def shout(hello)
  hello.upcase
end

# Simon says repeat should repeat
# Simon says repeat should repeat a number of times
def repeat(hello, number = 2)
  repeat = hello
  (1..(number - 1)).each do
    repeat += " #{hello}"
  end
  repeat
end

# Simon says start_of_word returns the first letter
# Simon says start_of_word returns the first two letters
def start_of_word(word, number)
  word[0..number - 1]
end

# Simon says first_word tells us the first word of 'Hello World' is 'Hello'
def first_word(word)
  word[0..(word.index(" ") - 1)]
end

# Simon says titleize capitalizes a word
# Simon says titleize capitalizes every word (aka title case)
# Simon says titleize doesn't capitalize 'little words' in a title
# Simon says titleize does capitalize 'little words' at the start of a title
def titleize(word)
  array = word.split
  lower_case = ["a", "and", "over", "the"]
  string = ""
  array.each_with_index do |value, index|
    if index == 0
      string << "#{value.capitalize} "
    elsif lower_case.include? value
      string << "#{value} "
    else
      string << "#{value.capitalize} "
    end
  end
  string.strip
end
