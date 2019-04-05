require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    get '/pirates.index' do
      #Show all pirates
      @pirates = Pirate.all
      erb :'pirates/index'
    end

  end
end
