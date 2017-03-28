require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello Vvien"
end

get '/secret' do
  "This is a secret"
end

get '/hello' do
  "hello hello hello hello hello hello"
end

get '/vivien' do
  "VIVIEN"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
