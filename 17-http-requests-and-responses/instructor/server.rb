require 'sinatra'

# 'Route': HTTP Verb/Method + Path
# 'Path': "local" part of the URL

get '/' do
  redirect to('/hello')
end

get '/hello' do
  @current_time = Time.now

  @todo_list = [
    'Water the plants',
    'Go to the gym',
    'Feed the cat',
    'Call the girlfriend'
  ]

  erb(:hello)
end

get '/goodbye' do
  'Goodbye!'
end
