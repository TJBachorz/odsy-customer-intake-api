class CustomerDataFileParser

    def self.sanitize(file)
        customer_data = file.split("\n")

        customer_data_list = customer_data.map { |customer| 
            customer.split(/[,|\n||]/)
        }

        customer_data_list.map { |customer|
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
