require 'sinatra/base'

class RPSGame < Sinatra::Base

  get '/' do
    erb :name_entry
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end