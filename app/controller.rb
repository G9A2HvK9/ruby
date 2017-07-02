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
      @fizzbuzz_runner = Fizzbuzz_Runner.instance
    end

    get '/projects/fizzbuzz' do
      p "get route: #{@fizzbuzz_runner}"
      erb(:fizzbuzz)
    end

    post '/projects/fizzbuzz' do
      @fizzbuzz_runner = Fizzbuzz_Runner.create(params[:lower_value].to_i, params[:upper_value].to_i, params[:lower_limit].to_i, params[:upper_limit].to_i)
      p "post route: #{@fizzbuzz_runner.initial}"
      @fizzbuzz_runner.execute
      redirect('/projects/fizzbuzz')
    end

end
