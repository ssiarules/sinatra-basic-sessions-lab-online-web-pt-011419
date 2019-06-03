require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "holiday"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do

    params = {
      :item => "socks"
    }
    item = Item.new(params)
    session[:item_id] = item.id
  end
end
