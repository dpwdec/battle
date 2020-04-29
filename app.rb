require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1], 100)
    session[:player2] = Player.new(params[:player2], 100)
    redirect('/play')
  end

  get '/play' do
    @player_1 = session[:player1]
    @player_2 = session[:player2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
