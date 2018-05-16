require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reverseed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Emily Wilding Davison", "Hariet Tubman", "Joan of Arc", "Malala Yousafzai", "Sojourner Truth"]
    erb :friends

  end
end