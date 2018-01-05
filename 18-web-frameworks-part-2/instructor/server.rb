require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/blog' do
  erb :blog
end

get '/recipes' do

  # .all is only OK for small number of items
  @recipes = Recipe.all

  erb :recipes
end

get '/recipes/:id' do

  id = params[:id].to_i
  @recipe = Recipe.find(id)

  erb :recipe
end
