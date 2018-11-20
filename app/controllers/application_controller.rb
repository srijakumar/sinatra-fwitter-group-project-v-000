require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "fwitter_secret"
    # so the user doesnt have to log in log out all the time
  end

  get '/' do
    binding.pry
    erb :'index'
  end

end
