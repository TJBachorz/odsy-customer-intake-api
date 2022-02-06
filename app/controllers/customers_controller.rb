class CustomersController < ApplicationController

    def index
        @customers = Customer.all
        render json: @customers
    end

    def create
        new_customers = []

        customer_data = CustomerDataFileParser.sanitize(params.keys[0])
        customer_data.map {|customer|
            @customer = Customer.new(customer)
            if @customer.valid?
                @customer.save
                new_customers << @customer
            end
        }
        render json: new_customers
    end
end
