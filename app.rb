require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text_input = params[:user_phrase]
        @piglatinized = PigLatinizer.new(text_input)
        # erb :piglatinize
    end
end