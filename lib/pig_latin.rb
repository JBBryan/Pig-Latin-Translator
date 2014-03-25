require "pig_latin/version"

module PigLatin
  # Your code goes here...

  def self.translate(word)
    if word[0] == "y"
      word[0]=""
      return word + "yay"
    elsif /^[^aeiou]/.match(word) == nil
      word + "way"
    else
      consonants = /^[^aeiouy]+/.match(word).to_s
      consonants_length = consonants.length - 1
      word[0..consonants_length] = ""
      word + consonants + "ay"
    end
  end
end
