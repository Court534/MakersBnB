require 'sinatra/base'
require 'sinatra/reloader'

class BnB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb (:index)
  end

  get '/spaces' do
    erb(:spaces)
  end


  run! if app_file == $0
end