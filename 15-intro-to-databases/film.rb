gem "activerecord", "=4.2.10"
require "mini_record"
require "active_record"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'films.sqlite3')

class Film < ActiveRecord::Base
  field :title, as: :string
  field :country, as: :string
  field :genre, as: :string
  field :rating, as: :integer
  field :description, as: :text
end
Film.auto_upgrade!

# name = "Scarface"
#
# scarface = Film.find_by(title: name)
#
# if scarface
#   p "#{name} already exists!"
# else
#   p Film.create(title: name, country: "USA", genre: "Drama", rating: 4, description: "Say hello to my little friend")
# end
# scarface =

# p Film.all

# film = Film.create(title: "Scarface", country: "USA", genre: "Drama", rating: 4, description: "Say hello to my little friend")
#
# p film.title
