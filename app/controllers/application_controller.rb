require 'sinatra'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
 
 post '/' do
    @stress_relief_activity = stress_relief_quiz
    @the_user = params[:user]
    return erb :results
    return erb :index
  end
end
