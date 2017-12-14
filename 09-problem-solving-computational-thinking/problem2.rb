# Problem: Pig Latin
# Pig Latin
 # "apple" => "appleay"
 # "plum" => "umplay"
 # grape => apegray
 # Natalie => atalieNay
 # "squeeze" => "eezesquay"

# plan
# get word from user
# pass it in as argument to pig_latin method
# check if word starts with vowel or consonant
# if it's a vowel simply add "ay" to the end
# if it starts with consonant move all consonants (up to first vowel) from start of word
#   to end of word and then add "ay"

def is_vowel?(letter)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  # if letter.is_included_in(vowels)
  # if vowels.include?(letter)
  #   return true
  # else
  #   return false
  # # end if
  # end
  return vowels.include?(letter)
# end method
end

# define method move_letter_from_start_to_end(word)
def move_letter_from_start_to_end(word)
  # first_letter = word.first
  # word.chop_that_off(first_letter)
  letters = word.split("")
  first_letter = letters.shift
  word = letters.join
  # word = word + first_letter
  word = word + first_letter
  # return word
  return word
# end
end

# Pseudocode
puts "please enter a word:"

# user_word = get_user_input()
user_word = gets.chomp

# define method pig_latin(english_word) {
def pig_latin(english_word)
  # if is_vowel?(english_word.first_character)
  if is_vowel?(english_word[0])
    # return english_word.add("ay")
    return english_word + "ay"
  # else
  else
    # until is_vowel?(english_word.first)
    until is_vowel?(english_word[0])
      # english_word = move_letter_from_start_to_end(english_word)
      english_word = move_letter_from_start_to_end(english_word)
    # end until
    end

    return english_word + "ay"
  # end
  end
# }
end

# print pig_latin("plum")
puts pig_latin(user_word)


# define method is_vowel?(letter)
