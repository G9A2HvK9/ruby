require 'sinatra/base'
require './app/helper.rb'

class Ruby < Sinatra::Base

# Home route. This is the baseline route for ruby web app.

  get '/' do
    erb(:home)
  end

  get '/projects' do
    erb(:projects)
  end

# This route holds all fizzbuzz functionality

    before do
      @fizzbuzz = Fizzbuzz.instance
    end

    get '/projects/fizzbuzz' do
      erb(:fizzbuzz)
    end

    post '/projects/fizzbuzz' do
      @fizzbuzz = Fizzbuzz.create(params[:lower_value], params[:upper_value])
    end

end
