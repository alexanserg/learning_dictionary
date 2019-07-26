require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/learning_dictionary')
also_reload('lib/**/*.rb')

Word.clear

word1 = Word.new("learn", "gain or acquire knowledge of or skill in something")
word1.save()
word2 = Word.new("forget", "fail to remember")
word2.save()

get ('/') do
  redirect to ('/welcome')
end
get ('/welcome') do
  @words = Word.all
  erb(:welcome)
end
get ('/definitions/:word') do
  @word = Word.find(params[:word].to_s.gsub(':',''))
  @def = Word.find_def(params[:word].to_s.gsub(':',''))
  erb(:word)
end
get ('/add_word') do
  erb(:add_word)
end
post ('/add_word') do
  Word.add(params[:word], params[:definition])
  redirect to('/welcome')
end
delete('/delete/:word') do
  @example = Word.find(params[:word].to_s.gsub(':',''))
  @example.delete()
  redirect to('/welcome')
end
