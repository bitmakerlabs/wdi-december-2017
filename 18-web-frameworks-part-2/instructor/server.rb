require 'sinatra'

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

  @recipes = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten Free Cookies'
  }

  erb :recipes
end

get '/recipes/:id' do

  recipes = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten Free Cookies'
  }

  id = params[:id].to_i
  @name = recipes[id]

  erb :recipe
end
