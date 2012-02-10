require 'app/library'

module  Teaser
  class App < Sinatra::Base
    
    get '/' do
      erb :index
    end
    
    post  '/updates/subscribe'  do
      user = User.first_or_create(:email => params[:email])
      user.subscribed = true
      if user.save
        erb :success
      else
        erb :failure
      end
    end
    
    get   '/updates/unsubscribe/:email'  do
    end
    
  end
end