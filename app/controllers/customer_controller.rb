class CustomersController < ApplicationController
    
    get '/customers' do 
        customers = Customer.all
        customers.to_json
    end

    post '/customers' do
        customer = Customer.create({
            name: params[:name],
            email: params[:email],
            phone: params[:phone],
            birthday: params[:birthday]
            }
        )
        customer.to_json
    end

    delete '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.destroy
        params[:id]
    end

    patch '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.update(
            name: params[:name],
            email: params[:email],
            phone: params[:phone],
            birthday: params[:birthday]
        )
        customer.to_json
    end

end