class CustomersController < ApplicationController

    def index
        @customers = Customer.all

        if params[:vehicle_type]
            @customers = @customers.sort_by { |customer| customer[:vehicle_type].upcase }
        end

        if params[:full_name]
            @customers = @customers.sort_by { |customer| customer[:first_name].upcase }
        end

        if params[:desc]
            @customers.reverse!
        end

        render json: @customers
    end

    def create
        new_customers = []

        customer_data = CustomerDataFileParser.sanitize(params.keys[0])
        customer_data.map { |customer|
            @customer = Customer.new(customer)
            if @customer.valid?
                @customer.save
                new_customers << @customer
            end
        }
        render json: new_customers
    end
end
