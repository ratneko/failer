require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  send_file File.join(settings.public_dir, 'index.html')
end
