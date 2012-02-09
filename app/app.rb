require 'app/library'

module  Teaser
  class App < Sinatra::Base
    
    get '/' do
      erb :index
    end
    
  end
end