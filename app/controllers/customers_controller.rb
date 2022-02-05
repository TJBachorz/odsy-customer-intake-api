class CustomersController < ApplicationController

    def create
        @customer = Customer.new(customer_params)

        if @customer.save
            render json: @customer
        else
            render json: @customer.errors.full_messages
        end
    end

    private

    def customer_params
        params
            .require(:customer)
            .permit(
                :first_name,
                :last_name,
                :email,
                :vehicle_type,
                :vehicle_name,
                :vehicle_length
            )
    end
end
