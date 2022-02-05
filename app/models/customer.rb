class Customer < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 255 }
    validates :last_name, presence: true, length: { maximum: 255 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
    validates :vehicle_type, presence: true, length: { maximum: 255 }
    validates :vehicle_name, presence: true, length: { maximum: 255 }
    validates :vehicle_length, presence: true, length: { maximum: 255 }
end
