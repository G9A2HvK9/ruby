require 'sinatra/base'

class Ruby < Sinatra::Base

# Home route. This is the baseline route for ruby web app.

  get '/' do
    erb(:home)
  end

  get '/projects' do
    erb(:projects)
  end

# Fizzbuzz route. This is the route that will hold all functionality of the fizzbuzz challenge

  get '/projects/fizzbuzz' do
    erb(:fizzbuzz)
  end

  post '/projects/fizzbuzz' do
    @fizzbuzz = FizzBuzz.new(params[:lower_limit, :upper_limit])
  end

end
