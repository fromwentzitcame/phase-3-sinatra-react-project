class NewslettersController < ApplicationController
    
    get '/newsletters' do 
        newsletters = Newsletter.all
        newsletters.to_json
    end

    get '/newsletters/promos' do
        promos = Newsletter.find_by(name: "Promotions & Sales").customer_list
        promos.compact.to_json
    end

    get '/newsletters/events' do
        events = Newsletter.find_by(name: "Community Events").customer_list
        events.compact.to_json
    end

    get '/newsletters/birthdays' do
        birthdays = Newsletter.find_by(name: "Birthday Promo").customer_list
        birthdays.compact.to_json
    end

    get '/newsletters/texts' do
        texts = Newsletter.find_by(name: "Texts").customer_list
        texts.compact.to_json
    end

end