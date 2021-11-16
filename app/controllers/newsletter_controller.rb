class NewslettersController < ApplicationController
    
    get '/newsletters' do 
        newsletters = Newsletter.all
        newsletters.to_json
    end

    get '/newsletters/promos' do
        promos = Newsletter.find_by(name: "Promotions & Sales").customer_list
        promos.to_json
    end

    get '/newsletters/events' do
        promos = Newsletter.find_by(name: "Community Events").customer_list
        promos.to_json
    end

    get '/newsletters/birthdays' do
        promos = Newsletter.find_by(name: "Birthday Promo").customer_list
        promos.to_json
    end

    get '/newsletters/texts' do
        promos = Newsletter.find_by(name: "Texts").customer_list
        promos.to_json
    end

end