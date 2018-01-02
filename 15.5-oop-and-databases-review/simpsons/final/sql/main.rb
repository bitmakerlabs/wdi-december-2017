require 'pry'
require 'sqlite3'
require './character.rb'
require './catchphrase.rb'

$db = SQLite3::Database.new 'simpsons.sqlite3'


15.times do
  random_character = Character.all.sample
  random_phrase    = random_character.speak
  name_with_colon  = random_character.name + ':'
  if random_phrase
    puts "#{name_with_colon.ljust(25)}#{random_phrase}"
  end
end
