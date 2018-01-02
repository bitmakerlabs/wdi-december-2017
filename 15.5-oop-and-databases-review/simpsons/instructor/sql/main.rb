require 'sqlite3'
require 'pry'
require './simpson_record.rb'
require './character.rb'
require './catchphrase.rb'

puts "Welcome to the Simpsons"

$db = SQLite3::Database.new 'simpsons.sqlite3'

p Character.all.sample
p Catchphrase.all.sample


# catchphrases = Catchphrases.all

# p Catchphrase.all

# characters.each do |character|
#   next unless character.catchphrase
#   puts "#{character.name}  says #{character.catchphrase.phrase}"
# end

# lisa = Character.find_by_name("Lisa Simpson")

# p lisa.catchphrase.phrase

# # 15.times do
# #   characters.sample.catchphrase
