require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
       
        make = PigLatinizer.new
       
        @words = make.pig(params[:user_phrase])
      
        erb :piglatinize
    end
end