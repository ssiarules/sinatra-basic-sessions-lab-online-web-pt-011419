require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do 
    item = Item.new(params)
    session[:item_id] = item.id
  end 
end
