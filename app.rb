require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do # remove session and replace with global variable
    $player1 = Player.new(params[:player_one_name])
    $player2 = Player.new(params[:player_two_name])
    redirect '/play'
  end
  
  get '/play' do
    @player_one_name = $player1.name
    @player_two_name = $player2.name
    erb :play
  end

  get '/attack' do
    @player_one_name = $player1
    @player_two_name = $player2
    @player_1.attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end

