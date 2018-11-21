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

get '/tweets/new' do
  if logged_in?
    erb :'tweets/create_tweet'
  else
    redirect to '/login'
  end
end

post '/tweets' do
  if params[:content] == ""
    redirect '/tweets/new'
  else
    #find the content associated with that user

    @user.content
  end
end


get '/tweet/:id' do
  if logged_in?
    @tweet = Tweet.find_by_id(params[:id])
    erb :'tweets/show_tweet'
  else
    redirect to '/login'
  end
end

get '/tweet/:id/edit' do
  if logged_in?
      @tweet = Tweet.find_by_id(params[:id])
      if @tweet && @tweet.user == current_user
        erb :'tweets/edit_tweet'
      else
        redirect to '/tweets'
      end
    else
      redirect to '/login'
    end
end


end
