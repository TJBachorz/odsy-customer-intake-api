class CustomerDataFileParser

    def self.sanitize(file)
        customers = []

        customer_data = file.split("\n")
        separated_customer_data = customer_data.map { |customer| 
            customer.split(/[,|\n||]/)
        }
        separated_customer_data.map { |customer|
            {
                :first_name => customer[0],
                :last_name => customer[1],
                :email => customer[2],
                :vehicle_type => customer[3],
                :vehicle_name => customer[4],
                :vehicle_length => customer[5].split(/\D+/).join
            }
        }
    end
end
