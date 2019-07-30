require 'pry'


class Word
  @@words = []
  attr_accessor(:word, :definition, :definition2, :definition3)
  def initialize(word, definition=nil, definition2=nil, definition3=nil)
    @word = word
    @definition = definition
    @definition2 = definition2
    @definition3 = definition3
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
  def self.add(word, definition=nil, definition2=nil, definition3=nil)
    @@words.push(Word.new(word, definition, definition2, definition3))
  end
  def ==(other_word)
    @word == other_word.word
  end
  def self.find(word)
    found_word = nil
    @@words.each do |w|
      if w.word == word
        found_word = w
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
  def self.find_def2(word)
    found_def = nil
    @@words.each do |w|
      if w.word == word
        found_def = w.definition2
        break
      end
    end
    found_def
  end
  def self.find_def3(word)
    found_def = nil
    @@words.each do |w|
      if w.word == word
        found_def = w.definition3
        break
      end
    end
    found_def
  end
  def self.update(definition=nil, definition2=nil, definition3=nil)
    @definition = definition
    @definition2 = definition2
    @definition3 = definition3
  end
  def delete
    @@words.delete(self)
  end
end
