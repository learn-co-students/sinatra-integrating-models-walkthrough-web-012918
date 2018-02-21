# Your TextAnalyzer model code will go here.

class TextAnalyzer
  attr_reader :text
  #this can look at the TEXT BUT CANT DO NOTHING ELSE BESIDES THAT HAHAHH MY DUDE

  def initialize(text)
    @text = text.downcase #this instance, this text is all the same MYUD DUED
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end


  def count_of_words
    words = text.split(" ")
    words.count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/,'')
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}

    arr1.map do |c|
      arr2[c] = arr.count(c)
    end

    biggest = { arr2.keys.first => arr2.values.first }

    arr2.each do |k,v|
      if v > biggest.values.first
        biggest = {}
        biggest[k] = v
      end
    end
    biggest
    # binding.pry
  end

  end
