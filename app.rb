require 'sinatra/base'
require 'sinatra/reloader'
require './lib/space'

class BnB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb (:index)
  end

  get '/space' do
    @rooms = Space.all
    erb(:spaces)
  end


  run! if app_file == $0
end