require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  send_file File.join(settings.public_dir, 'index.html')
end

get '/users/new' do
  send_file File.join(settings.public_dir, 'index.html')
end

post '/users' do
  send_file File.join(settings.public_dir, 'index.html')
end

get '/user/:user_id' do
  user = {
    id: 1,
    user_id: 'jc',
    name: 'JackDaniel',
    email: 'jack-damiel@email.com',
    twitter: 'https://twitter.com'
  }

  user.to_json
end
