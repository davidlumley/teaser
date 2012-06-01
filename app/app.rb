require File.dirname(__FILE__) + '/library'

module  Teaser
  class App < Sinatra::Base
    
    get '/' do
      erb :index
    end
    
    post  '/updates/subscribe'  do
      @email = params[:email]
      user = User.first_or_create(:email => @email)
      user.subscribed = true
      if user.save
        erb :'subscribe/success'
      else
        erb :'subscribe/failure'
      end
    end
    
    get   '/updates/unsubscribe/:email'  do
      @email = params[:email]
      user = User.first(:email => @email)
      if user
        user.subscribed = false
        if user.save
          erb :'unsubscribe/success'
        else
          erb :'unsubscribe/failure'
        end
      else
        erb :'unsubscribe/failure'
      end
    end
    
  end
end