# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all

test = Customer.new(
    first_name: "test",
    last_name: "test",
    email: "test",
    vehicle_type: "test",
    vehicle_name: "test",
    vehicle_length: "test"
)

test.save