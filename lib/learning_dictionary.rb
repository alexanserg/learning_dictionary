require 'pry'

class Word
  @@words = []
  attr_accessor(:word, :definition)
  def initialize(word, definition=nil)
    @word = word
    @definition = definition
  end
  def save
    @@words.push(self)
  end
  def self.all
    @@words
  end
  def self.clear
    @@words = []
  end
  def self.add(word, definition=nil)
    @@words.push(Word.new(word, definition))
  end
  def ==(other_word)
    (@word == other_word.word)
  end
  def self.find(word)
    found_word = nil
    @@words.each do |w|
      if w.word == word
        found_word = word
        break
      end
    end
    found_word
  end
  def self.find_def(word)
    found_def = nil
    @@words.each do |w|
      if w.word == word
        found_def = w.definition
        break
      end
    end
    found_def
  end
  def update(word, definition=nil)
    @word = word
    @definition = definition
  end
  def delete
    @@words.delete(self)
  end
end
