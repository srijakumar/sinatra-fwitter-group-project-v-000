class UsersController < ApplicationController

get '/signup' do
  erb :'users/create_user'
  #redirect to '/tweets'
end


end
