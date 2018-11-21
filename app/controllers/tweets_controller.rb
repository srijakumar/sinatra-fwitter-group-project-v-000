require 'pry'
class TweetsController < ApplicationController

get '/tweets' do

#  binding.pry
  if logged_in?

    @tweets = Tweet.all
    erb :'tweets/tweets'
  else
    redirect to '/login'
  end

end
end
