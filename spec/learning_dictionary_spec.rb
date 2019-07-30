require 'rspec'
require 'learning_dictionary'

@@words =[]
describe('#Word') do
  it('Should initiate new words with 0 - 3 definitions') do
    word1=Word.new("learn", "gain or acquire knowledge of or skill in something")
    expect(word1.word).to(eq("learn"))
    expect(word1.definition).to(eq("gain or acquire knowledge of or skill in something"))
  end
  describe("#save") do
    it ('should push a word object into the @@words array') do
      word1=Word.new("learn", "gain or acquire knowledge of or skill in something")
      word1.save
      expect(@@words.length).to(eq(1))
    end
  end
end
