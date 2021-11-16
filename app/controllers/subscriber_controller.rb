class SubscribersController < ApplicationController
    
    get '/subscribers' do 
        subscribers = Subscriber.all
        subscribers.to_json
    end

end