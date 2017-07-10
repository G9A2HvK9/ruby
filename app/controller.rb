require 'sinatra/base'
require './app/helper.rb'

class Ruby < Sinatra::Base

  enable :sessions

# Home route. This is the baseline route for ruby web app.

  get '/' do
    erb(:home)
  end

  get '/projects' do
    erb(:projects)
  end

# This route holds all fizzbuzz functionality

    get '/projects/fizzbuzz' do
      @html_display = session[:result]
      erb(:fizzbuzz)
    end

    post '/projects/fizzbuzz' do # clears fizzbuzz results session and sets new session according to params from get route
      session.clear
      session[:result] = Fizzbuzz_Runner.new(params[:lower_value].to_i, params[:upper_value].to_i, params[:lower_limit].to_i, params[:upper_limit].to_i).execute
      redirect('/projects/fizzbuzz') # redirects back to get route and displays results
    end

end
